import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:caspa_mobility/utils/constants/sized_box.dart';
import 'package:caspa_mobility/utils/screen/snack.dart';
import 'package:caspa_mobility/widgets/optimal_bottom_sheet/caspa_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dialog.dart';
import 'inner_shadow.dart';

class CopiableField extends StatelessWidget {
  String title;
  String data;
  String copyText;
  int maxLines = 1;

  CopiableField(
      {@required this.title,
      @required this.data,
      this.copyText,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.greenAccent,
      //height: 72,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              title ?? "",
              style: TextStyle(
                  color: MyColors.textRED,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          MySizedBox.h8,
          InnerShadow(
            offset: Offset(2, 3),
            blurRadius: 5,
//    spreadRadius: -5,
            color: Color.fromRGBO(9, 106, 159, 0.1),
            child: GestureDetector(
              onTap: () {
                // Clipboard.setData(new ClipboardData(text: data ?? ""))
                //     .then((_) {
                //   Snack.display(
                //       context: context,
                //       message: copyText ?? "coppied",
                //       showSuccessIcon: true,
                //       positive: true);
                // });

                myModalBottomSheet(context);

                // showDialog(
                //   context: context,
                //   builder: (BuildContext contextZ) {
                //     return CaspaDialog(
                //       context: context,
                //       dialogTitle: "teest ",
                //       genderId: 1,
                //       index: 4,
                //       sW: MediaQuery.of(context).size.width,
                //     );
                //   },
                // );
              },
              child: Container(
                height: 44.0 + ((maxLines ?? 1 - 1) * 20.0.sp),
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          data ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: maxLines ?? 1,
                          style: TextStyle(
                              color: Color.fromRGBO(135, 133, 133, 1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: SvgPicture.asset('assets/svg/copy.svg'))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void myModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        useRootNavigator: true,
        enableDrag: true,
        isDismissible: true,

        // barrierColor: Colors.red,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return CaspaBottomSheet(
            child: Column(
              //  shrinkWrap: true,
              //    scrollDirection: Axis.vertical,
              //physics: AlwaysScrollableScrollPhysics(),
              children: [
                for (int i = 0; i < 100; i++)
                  Container(
                    height: 30,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    color: Colors.yellow,
                    child: Text("$i"),
                  ),
              ],
            ),
          );
        });
  }
}
