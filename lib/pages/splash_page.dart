// Flutter imports:
import 'package:animate_do/animate_do.dart';
import 'package:caspa_mobility/cubit/authentication/authentication_cubit.dart';
import 'package:caspa_mobility/pages/temp_page/temp_page.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/paint/caspa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'in_app_webiew_example.screen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

void goToApp(BuildContext context) {
  Future.delayed(Duration(seconds: 3)).then((value) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => BlocProvider(
            create: (_) => AuthenticationCubit()..appStarted(),
            child: TempPage())),
        (route) {
      return false;
    });
    // getLocalData();
  });
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    goToApp(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        backgroundColor: MyColors.mainOrange,
       // appBar: buildAppBar(),
        body: Center(
          child: Container(    padding: EdgeInsets.only(right: 80,bottom: 80),
           // color: Colors.blue,
            child: FadeIn(
              duration: Duration(milliseconds: 3000),
              child: CustomPaint(
                size: Size(120, (120).toDouble()),
               // //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: MyColors.mainOrange,
      backwardsCompatibility: false,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: MyColors.mainOrange),
    );
  }
}
