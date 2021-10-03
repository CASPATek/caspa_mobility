import 'package:caspa_mobility/cubit/authentication/authentication_cubit.dart';
import 'package:caspa_mobility/cubit/authentication/authentication_state.dart';
import 'package:caspa_mobility/pages/in_app_webiew_example.screen.dart';
import 'package:caspa_mobility/pages/temp_page/widgets/temp_page_success_body.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TempPage extends StatefulWidget {
  const TempPage({Key key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  String text = "caspa mobility";

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
      body: SafeArea(
        child: Container(
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
                text = state.message;

                return TempPageSuccessBody(
                  permission: permission,
                  text: text,
                );
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
      ),
    );
  }

  Future<void> goToApp() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => InAppWebViewExampleScreen()));
  }
}
