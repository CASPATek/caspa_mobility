import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'copiable_field.dart';
import 'growwer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnbarGroup extends StatelessWidget {
  const AnbarGroup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Gowwer(
        initColor: Colors.transparent,
        // endColor: Colors.amber,
        initH: 60,
        endH: (92 * 5).toDouble() + (20.0.sp * (3-1)) + 36+50,
        //(94*element_sayi)+(14.0* (elave_setrli_field_sayi-1))+(padding)
        content: Container(
          margin: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Container(
                color: Colors.amber,
            //    height: 92,
                child: CopiableField(
                  title: "İsim",
                  data: "Bahtiyar",
                ),
              ),
              CopiableField(
                title: "Soy isim",
                data: "Bahtiyarli",
              ),
              CopiableField(
                title: "Ilce",
                data: "Ataşehir",
              ),
              CopiableField(
                title: "İsim",
                data: "Bahtiyar",
              ),
              Container(color: Colors.red,
               //height: 94+64.sp,
                child: CopiableField(
                  maxLines: 3,
                  title: "Mahalle",
                  data:
                      "Yenisahra bdhsfkh jdsfbhjfsd jhfsjhdsfj jhjkshjfgd jhjshkjdsf hjkhsgf jhj hjghjhjhghgj hkjdsf hjkhsgf jhj hjghjhjhghgj hkjdsf hjkhsgf jhj hjghjhjhghgj hkjdsf hjkhsgf jhj hjghjhjhghgj",
                ),
              ),
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
    ));
  }
}
