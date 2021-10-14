// Flutter imports:

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

    return Container(
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      // height: 270,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          MySizedBox.h24,
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
