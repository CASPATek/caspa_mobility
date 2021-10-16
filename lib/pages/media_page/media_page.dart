import 'package:caspa_mobility/pages/media_page/widgets/video_element.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:flutter/material.dart';

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       // backgroundColor: MyColors.mainBlue,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20),
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          children: [
            VideoElement(),
            VideoElement(),
            VideoElement(),
            VideoElement(),
            VideoElement(),
          ],
        ),
      ),
    );
  }
}
