import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'add_btn.dart';

class UserAchivementCard extends StatelessWidget {
  UserAchivementCard({
    super.key,
  });
  // String title;
  // String recommandedDesc;

  // Function()? onTap;
  // bool isHasBtn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Container(
        height: 112.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: ColorsUtils.WHITE),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomText(
                  text: "Meal Plan progress",
                  fontSize: 14.sp,
                  fontColor: ColorsUtils.PRIMARY,
                  customFontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomText(
                  text: "7 out of 50 Meal!",
                  fontSize: 16.sp,
                  fontColor: ColorsUtils.HINT_COLOR,
                  customFontWeight: FontWeight.w400,
                ),
              ),
              LinearPercentIndicator(
                width: 240.0.w,
                barRadius: const Radius.circular(20),
                lineHeight: 9.0.h,
                percent: 0.7,
                backgroundColor: ColorsUtils.GRAY_3,
                progressColor: ColorsUtils.PRIMARY,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
