import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomCloseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("close",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: MyColors.formGrey))),
    );
  }
}
