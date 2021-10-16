import 'package:flutter/material.dart';

class InkWrapper extends StatelessWidget {
  final Color splashColor;
  final Color highlightColor;
  final Widget child;
  final double radius;
  final VoidCallback onTap;

  InkWrapper({
    this.splashColor,
    this.highlightColor,
    this.radius,
    @required this.child,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(radius??0),
              splashColor: splashColor,
              highlightColor: highlightColor,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
