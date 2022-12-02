import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'add_btn.dart';

class WaterCard extends StatelessWidget {
  WaterCard(
      {super.key,
      required this.title,
      this.isHasBtn = false,
      required this.recommandedDesc});
  String title;
  String recommandedDesc;

  Function()? onTap;
  bool isHasBtn;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: ColorsUtils.WHITE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: title,
                      fontSize: 16.sp,
                      fontColor: ColorsUtils.BLACK,
                      customFontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: recommandedDesc,
                      fontSize: 12.sp,
                      fontColor: ColorsUtils.HINT_COLOR,
                      customFontWeight: FontWeight.w400,
                    )
                  ],
                ),
                AddBtn(
                  onTap: onTap,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomText(
              text: "Drink 150 Oz",
              fontSize: 14.sp,
              fontColor: ColorsUtils.PRIMARY,
              customFontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinearPercentIndicator(
                width: 240.0.w,
                barRadius: const Radius.circular(20),
                lineHeight: 9.0.h,
                percent: 0.7,
                backgroundColor: ColorsUtils.GRAY_3,
                progressColor: ColorsUtils.PRIMARY,
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomText(
                text: "110/150",
                fontColor: Color(0xff8B8B8B),
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.HINT_COLOR,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.HINT_COLOR,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.HINT_COLOR,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.HINT_COLOR,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.HINT_COLOR,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.waterColor,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.waterColor,
              ),
              Image.asset(
                AssetsImage.water,
                color: ColorsUtils.waterColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
