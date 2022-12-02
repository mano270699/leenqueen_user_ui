import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../controllers/OnbordingFBSetUp_controller.dart';

class FitnessItem extends GetView<OnbordingFBSetUpController> {
  FitnessItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.desc,
      required this.index});
  String icon;
  String title;
  String desc;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Obx(
          () => Container(
            height: 75.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorsUtils.Card_Gray_COLOR,
              border: controller.fitnessItemSelected.value == index
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
                    icon,
                    height: 51,
                    width: 51,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title,
                        fontColor: ColorsUtils.BLACK,
                        fontSize: 16.sp,
                        customFontWeight: FontWeight.w400,
                      ),
                      CustomText(
                        text: desc,
                        fontColor: ColorsUtils.HINT_COLOR,
                        fontSize: 12.sp,
                        customFontWeight: FontWeight.w400,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
