import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TempPageSuccessBody extends StatefulWidget {
  bool permission;
  String text;

  TempPageSuccessBody({@required this.permission, @required this.text});

  @override
  State<TempPageSuccessBody> createState() => _TempPageSuccessBodyState();
}

class _TempPageSuccessBodyState extends State<TempPageSuccessBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 21),
      child: widget.permission
          ? Text('-')
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: 160,
                  //width: 90,
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    widget.text,
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
  }

  _launchEmail() async {
    if (await canLaunch("mailto:esev.sv@gmail.com")) {
      await launch("mailto:esev.sv@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }
}
