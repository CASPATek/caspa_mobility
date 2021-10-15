import 'package:caspa_mobility/pages/media_page/widgets/video_element.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:flutter/material.dart';

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
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
