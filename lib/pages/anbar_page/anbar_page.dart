import 'package:caspa_mobility/pages/anbar_page/widgets/growwer.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:caspa_mobility/utils/paint/caspa.dart';
import 'package:caspa_mobility/utils/screen/snack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/anbar_group.dart';
import 'widgets/copiable_field.dart';
import 'widgets/inner_shadow.dart';

class AnbarPage extends StatelessWidget {
  const AnbarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 21),
            //   child: Container(
            //     color: Colors.amber,
            //     child: ExpansionTile(
            //       title: Text("data"),
            //       tilePadding: EdgeInsets.zero,
            //       children: [MySizedBox.h16, Text("data")],
            //     ),
            //   ),
            // ),
            MySizedBox.h16,
            AnbarGroup(),
            AnbarGroup(),
          ],
        ),
      ),
    );
  }



}
