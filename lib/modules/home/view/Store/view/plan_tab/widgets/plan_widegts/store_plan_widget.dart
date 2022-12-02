import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      decoration: BoxDecoration(
        color: ColorsUtils.WHITE,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 110.h,
            width: 150.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsImage.meal_plan), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: CircleAvatar(
                  radius: 20.h,
                  backgroundColor: ColorsUtils.WHITE,
                  child: const Icon(
                    Icons.bookmark,
                    color: ColorsUtils.PRIMARY,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
            child: Container(
              width: 100.w,
              child: CustomText(
                text: "Chicken Tikka Masala",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w400,
                fontSize: 15.sp,
                fontColor: ColorsUtils.BLACK,
              ),
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
                  fontColor: ColorsUtils.priceColor,
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
