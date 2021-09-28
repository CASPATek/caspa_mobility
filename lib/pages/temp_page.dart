import 'package:caspa_mobility/cubit/authentication/authentication_cubit.dart';
import 'package:caspa_mobility/cubit/authentication/authentication_state.dart';
import 'package:caspa_mobility/pages/in_app_webiew_example.screen.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class TempPage extends StatefulWidget {
  const TempPage({Key key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  String text =
      "app stopped by shrapp , please contact with shrapp for continue :)";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(milliseconds: 500)).then((value) {
    //   Navigator.of(context).push(
    //       MaterialPageRoute(builder: (context) => InAppWebViewExampleScreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocConsumer<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            if (state is AuthenticationAuthenticated) {
              final bool permission = state.permission;
              if (permission) {
                goToApp();
              }
            } else {
              print("permission is denied");
            }
          },
          builder: (context, state) {
            if (state is AuthenticationLoading) {
              return Center(
                  child: CircularProgressIndicator(
                color: MyColors.mainOrange,
              ));
            } else if (state is AuthenticationAuthenticated) {
              final bool permission = state.permission;
              return Center(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: permission
                    ? Text('-')
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // height: 160,
                            //width: 90,
                            color: Colors.red,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Text(
                              text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  text =
                                      "app stopped by shrapp , please contact with shrapp for continue :(";
                                });

                                _launchEmail();
                              },
                              child: Text(
                                "tap for contact with developer",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ))
                        ],
                      ),
              ));
            } else {
              return Center(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child:
                    Text('Xəta baş verdi, zəhmət olmasa, yenidən cəhd edin.'),
              ));
            }
          },
        ),
      ),
    );
  }

  Future<void> goToApp() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => InAppWebViewExampleScreen()));
  }

  _launchEmail() async {
    if (await canLaunch("mailto:esev.sv@gmail.com")) {
      await launch("mailto:esev.sv@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }
}
