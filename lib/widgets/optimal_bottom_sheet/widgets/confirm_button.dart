import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class ConfirmButton extends StatelessWidget {
  final Function onConfirm;

  ConfirmButton(this.onConfirm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
          onPressed: () {
            onConfirm.call();
            Navigator.pop(context);
          },
          child: Text(
              "confirm".toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: MyColors.mainBlue))),
    );
  }
}
