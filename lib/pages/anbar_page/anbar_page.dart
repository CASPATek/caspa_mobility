import 'package:caspa_mobility/pages/anbar_page/widgets/growwer.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:caspa_mobility/utils/paint/caspa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/inner_shadow.dart';

class AnbarPage extends StatelessWidget {
  const AnbarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Container(
              color: Colors.amber,
              child: ExpansionTile(
                title: Text("data"),
                tilePadding: EdgeInsets.zero,
                children: [MySizedBox.h16, Text("data")],
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Gowwer(
              initColor: Colors.transparent,
              // endColor: Colors.amber,
              //  initH: 100,
              //endH: 300,
              content: Padding(
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "İsim",
                          style: TextStyle(
                              color: MyColors.textRED,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        MySizedBox.h8,
                        InnerShadow(
                          offset: Offset(2, 3),
                          blurRadius: 5,
//    spreadRadius: -5,
                          color: Color.fromRGBO(9, 106, 159, 0.1),
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Behtiyar",
                                    style: TextStyle(
                                        color: Color.fromRGBO(135, 133, 133, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                      width: 20,
                                      height: 20,
                                      child:
                                          SvgPicture.asset('assets/svg/copy.svg'))
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              tile: Container(
                  // height: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 11,
                            color: Color.fromRGBO(35, 57, 103, 0.2)),
                      ]),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //MySizedBox.w10,
                      SvgPicture.asset(
                        'assets/svg/turkey-svgrepo-com.svg',
                        width: 30,
                        height: 30,
                      ),
                      MySizedBox.w10,
                      Text(
                        "Turkiye - Istanbul",
                        style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(176, 175, 175, 1)),
                      ),
                    ],
                  )),
              //  initH: 100,
            ),
          )),
        ],
      ),
    );
  }
}
