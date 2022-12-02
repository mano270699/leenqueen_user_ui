import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class OrederDetailsItem extends StatelessWidget {
  const OrederDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201.h,
      decoration: BoxDecoration(
        color: ColorsUtils.WHITE,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 115.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsImage.plan_image),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: CustomText(
                    text: "Chicken Tikka Masala",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(AssetsImage.star),
                    SizedBox(
                      width: 5.w,
                    ),
                    CustomText(
                      text: "4.5",
                      fontAlign: TextAlign.start,
                      customFontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      fontColor: ColorsUtils.rateColor,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "120 EGP",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  fontColor: ColorsUtils.PRIMARY,
                ),
                Container(
                  height: 29.h,
                  width: 68.w,
                  decoration: BoxDecoration(
                      color: ColorsUtils.lightGreenColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(28)),
                  child: Center(
                    child: CustomText(
                      text: "Breakfast",
                      fontAlign: TextAlign.center,
                      customFontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      fontColor: ColorsUtils.lightGreenColor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
