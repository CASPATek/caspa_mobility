import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Gowwer extends StatefulWidget {
  Color initColor;
  Color endColor;
  double initW;
  double endW;
  double endH;
  double initH;
  Widget tile;
  Widget content;
  Widget trailler;

  Gowwer(
      {this.initColor,
      this.endColor,
      this.initW,
      this.endW,
      this.trailler,
      this.content,
      this.tile,
      this.endH,
      this.initH});

  @override
  _GowwerState createState() => _GowwerState();
}

class _GowwerState extends State<Gowwer> {
  int duration = 300;
  double width = 100;
  double height = 50;
  Color color = Colors.transparent;

  bool isExpanded = false;
  bool showContent = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    color = widget.initColor ?? Colors.transparent;
    width = widget.initW ?? double.infinity;
    height = widget.initH ?? null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animateContainerSize();
       // _animateContainerColor();

        setState(() {
          isExpanded = !isExpanded;

        });
        if(showContent)showContent=false;

        print("is: +" + isExpanded.toString());
      },
      child: AnimatedContainer(
        onEnd: (){
          setState(() {
            showContent=true;
          });
        },
        duration: Duration(milliseconds: duration),
        width: width,
        height: height,
        // height: height,
        //  constraints: !isExpanded
        //      ? BoxConstraints(maxHeight: 40.0)
        //      : BoxConstraints(maxHeight: double.infinity),
        color: color,
        child: Column(
          children: [
        IgnorePointer(
          child: Stack(
            alignment: Alignment.center,
            children: [
              widget.tile,
              Positioned(
                right: 20,
                child: isExpanded
                    ? FlipInX(
                        child: RotatedBox(
                        quarterTurns: 1,
                        child: widget.trailler ??
                            Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 15,
                              color: MyColors.mainOrange,
                            ),
                      ))
                    : RotatedBox(
                        quarterTurns: 1,
                        child: FlipInX(
                            child: widget.trailler ??
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                  color: MyColors.mainOrange,
                                )),
                      ),
              )
            ],
          ),
        ),
        (isExpanded&&showContent)
            ? FadeIn(
                duration: Duration(milliseconds: 200),
             //   from: 50,
                child: widget.content)
            : Container()
          ],
        ),
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  void _animateContainerSize() {
    Random random = Random();
    setState(() {
      width = isExpanded
          ? (widget.initW ?? double.infinity)
          : (widget.endW ?? double.infinity);
      height = isExpanded ? (widget.initH ?? null) : (widget.endH ?? null);
      duration = 300;
    });
  }

  void _animateContainerColor() {
    setState(() {
      // Generate random color
      color = isExpanded
          ? (widget.initColor ?? Colors.white)
          : (widget.endColor ?? Colors.white);
      duration = 500;
    });
  }
}
