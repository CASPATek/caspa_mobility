import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemoScreen extends StatefulWidget {
  Color initColor;
  Color endColor;
  double initW;
  double endW;
  double endH;
  double initH;



  @override
  _AnimatedContainerDemoScreenState createState() =>
      _AnimatedContainerDemoScreenState();
}

class _AnimatedContainerDemoScreenState
    extends State<AnimatedContainerDemoScreen> {
  int duration = 300;
  double width = 100;
  double height = 100;
  Color color = Colors.blue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    color = widget.initColor ?? Colors.blue;
    width = widget.initW ?? double.infinity;
    height = widget.initH ?? null;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: duration),
            width: width,
            height: height,
            color: color,
            curve: Curves.fastOutSlowIn,
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              RaisedButton(
                child: Text('Animate Size'),
                onPressed: _animateContainerSize,
              ),
              RaisedButton(
                child: Text('Animate Color'),
                onPressed: _animateContainerColor,
              ),
              RaisedButton(
                child: Text('Animate Size & Color'),
                onPressed: () {
                  _animateContainerColor();
                  _animateContainerSize();
                },
              )
            ],
          )
        ],
      ),
    );
  }

  void _animateContainerSize() {
    Random random = Random();
    setState(() {
      width = (random.nextInt(150) + 50).toDouble();
      height = (random.nextInt(150) + 50).toDouble();
      duration = 300;
    });
  }

  void _animateContainerColor() {
    setState(() {
      // Generate random color
      color = widget.endColor;
      duration = 500;
    });
  }
}
