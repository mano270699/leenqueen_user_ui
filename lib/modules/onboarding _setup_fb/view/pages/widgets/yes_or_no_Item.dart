import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../controllers/OnbordingFBSetUp_controller.dart';

class YesItem extends GetView<OnbordingFBSetUpController> {
  YesItem({
    super.key,
    required this.isSelected,
  });
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorsUtils.Card_Gray_COLOR,
            border: isSelected
                ? Border.all(color: ColorsUtils.PRIMARY)
                : const Border(
                    bottom: BorderSide.none,
                    left: BorderSide.none,
                    right: BorderSide.none,
                    top: BorderSide.none),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Image.asset(
                  AssetsImage.check,
                  height: 51,
                  width: 51,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  text: "Yes",
                  fontColor: ColorsUtils.BLACK,
                  fontSize: 16.sp,
                  customFontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
        ));
  }
}

class NoItem extends GetView<OnbordingFBSetUpController> {
  NoItem({
    super.key,
    required this.isSelected,
  });
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorsUtils.Card_Gray_COLOR,
            border: isSelected
                ? Border.all(color: ColorsUtils.PRIMARY)
                : const Border(
                    bottom: BorderSide.none,
                    left: BorderSide.none,
                    right: BorderSide.none,
                    top: BorderSide.none),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Image.asset(
                  AssetsImage.wrong,
                  height: 51,
                  width: 51,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  text: "No",
                  fontColor: ColorsUtils.BLACK,
                  fontSize: 16.sp,
                  customFontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
        ));
  }
}
