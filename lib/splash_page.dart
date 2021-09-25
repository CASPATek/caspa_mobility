// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'in_app_webiew_example.screen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

void goToApp(BuildContext context) {
  Future.delayed(Duration(seconds: 4)).then((value) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) =>
        InAppWebViewExampleScreen()), (route) {
      return false;
    });
    // getLocalData();
  });
}


class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  Color primaryColor = Color.fromRGBO(222, 37, 55, 1);
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
    goToApp(context);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: buildAppBar(),
        body: Center(

        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromRGBO(222, 37, 55, 1),
      backwardsCompatibility: false,
      systemOverlayStyle:
      SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(222, 37, 55, 1)),
    );
  }
}
