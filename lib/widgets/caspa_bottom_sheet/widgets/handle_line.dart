import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class HandleLine extends StatelessWidget {
  final double sW;

  HandleLine(this.sW);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: (sW / 2) - 100),
      width: 58,
      height: 3,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        color: MyColors.mainBlue,),

    );
  }
}
