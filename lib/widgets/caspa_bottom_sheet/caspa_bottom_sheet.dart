// Flutter imports:

import 'package:animate_do/animate_do.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:flutter/material.dart';

import 'widgets/handle_line.dart';
import 'widgets/title_and_row_buttons.dart';

class CaspaBottomSheet extends StatelessWidget {
  final Widget child;
  final Function onConfirm;
  final bool showCloseButton;
  final bool showConfirmButton;
  final String title;

  CaspaBottomSheet(
      {this.child,
        this.onConfirm,
        this.title,
        this.showCloseButton,
        this.showConfirmButton});

  @override
  Widget build(BuildContext context) {
    var sW = MediaQuery.of(context).size.width;

    return IntrinsicHeight(
      child: Container(
        //height: 90,
constraints: BoxConstraints(
  maxHeight: MediaQuery.of(context).size.height-40
),
        color: Colors.transparent,
        child: Stack(
          //fit: StackFit.loose,
          //alignment: Alignment.bottomCenter,
          children: [
            FadeInUp(
              duration: Duration(milliseconds: 300),
              child: Container(
                //    height: 90,
                 // child: bottomSheetBody(sW),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ))),
            ),
            FadeInUp(
              duration: Duration(milliseconds: 320),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, -1),
                          blurRadius: 6.5,
                          spreadRadius: 2.5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                // height: 270,

                child: bottomSheetBody(sW),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheetBody(double sW) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),

      child: Column(
        mainAxisSize: MainAxisSize.min,
      //  shrinkWrap: false,
        //physics: NeverScrollableScrollPhysics(),
        children: [
          MySizedBox.h20,
          Center(child: HandleLine(sW)),
          //    MySizedBox.h5,
          titleAndButtons(
              onConfirm: onConfirm,
              showCloseButton: showCloseButton,
              showConfirmButton: showConfirmButton,
              title: title),
          MySizedBox.h5,
          child,
          MySizedBox.h10
        ],
      ),
    );
  }

  TitleAndRowButtons titleAndButtons(
      {Function onConfirm,
        bool showCloseButton,
        bool showConfirmButton,
        String title}) {
    return TitleAndRowButtons(
      onConfirm: () {
        onConfirm.call();
      },
      showCloseButton: showCloseButton,
      showConfirmButton: showConfirmButton,
      title: title,
    );
  }
}
