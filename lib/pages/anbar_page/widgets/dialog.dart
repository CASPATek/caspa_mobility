// Flutter imports:

import 'package:animate_do/animate_do.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:flutter/material.dart';

enum AlertType { Success, Error }

class CaspaDialog extends StatefulWidget {
  final String dialogTitle;
  final int index;
  final double sW;
  final int genderId;
  final BuildContext context;
  final AlertType alertType;

  CaspaDialog(
      {this.dialogTitle,
      this.index,
      this.sW,
      this.genderId,
      this.context,
      this.alertType});

  @override
  State<StatefulWidget> createState() {
    return _CaspaDialogState();
  }
}

class _CaspaDialogState extends State<CaspaDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //backgroundColor: Colors.red,

      //titlePadding: EdgeInsets.fromLTRB(24.0, 12.0, 10.0, 0.0),
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      //insetPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      content: Container(
        //  color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 41, vertical: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: widget.alertType == AlertType.Error
                    ? [
                        // Color.fromRGBO(248, 102, 128, 1),
                        Color.fromRGBO(248, 143, 102, 1),
                        //Color.fromRGBO(248, 102, 216, 1),
                        Color.fromRGBO(248, 102, 216, 1),
                      ]
                    : [
                        Color.fromRGBO(48, 143, 102, 1),
                        //Color.fromRGBO(248, 102, 216, 1),
                        Color.fromRGBO(48, 102, 216, 1),
                      ])),
        width: widget.sW - 48,
        height: 291,
        child: Column(
          children: [
            Flash(
              child: widget.alertType == AlertType.Error
                  ? Icon(
                      Icons.cancel_rounded,
                      color: Colors.white,
                      size: 80,
                    )
                  : Icon(
                      Icons.add_alarm_sharp,
                      color: Colors.white,
                      size: 80,
                    ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Promokod yanlışdır və ya artıq istifadə edilib",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            MySizedBox.h24,
            Material(
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 9),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "OK",
                    style: TextStyle(
                        color: widget.alertType == AlertType.Error
                            ? Color.fromRGBO(248, 102, 216, 1)
                            : Color.fromRGBO(48, 102, 216, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
