import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:caspa_mobility/widgets/ink_wrapper/ink_wrapper.dart';
import 'package:flutter/material.dart';

class VideoElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "1. Şərtlər və qaydalar",
            style: TextStyle(fontSize: 20, color: MyColors.mainBlue),
          ),
          MySizedBox.h16,
          InkWrapper(
            splashColor: MyColors.mainBlue.withOpacity(0.2),
            highlightColor: MyColors.mainBlue.withOpacity(0.1),
            radius: 12,
            onTap: () {
              debugPrint("tesy");
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        child: Image.asset(
                          'assets/images/test_clip.jpg',
                          fit: BoxFit.contain,
                        ),
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                ),
                Positioned.fill(
                    child: IgnorePointer(
                  child: Container(
                      decoration: BoxDecoration(
                          //color: Colors.red,
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10))),
                )),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_fill_rounded,
                        size: 60,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
