import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PlanCard extends StatelessWidget {
  PlanCard({super.key, required this.title, required this.onTapDowenload});
  String title;
  Function() onTapDowenload;
  // String recommandedDesc;

  // Function()? onTap;
  // bool isHasBtn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorsUtils.WHITE,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(1, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AssetsImage.pdf),
                    SizedBox(
                      width: 5.w,
                    ),
                    CustomText(
                        fontAlign: TextAlign.center,
                        text: title,
                        fontSize: 12.sp,
                        customFontWeight: FontWeight.w500,
                        fontColor: ColorsUtils.BLACK),
                  ],
                ),
                InkWell(
                    onTap: onTapDowenload,
                    child: Image.asset(AssetsImage.download)),
              ],
            )),
      ),
    );
  }
}
