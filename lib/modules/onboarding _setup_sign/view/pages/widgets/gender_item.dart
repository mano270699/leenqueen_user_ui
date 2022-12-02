import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';

import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../controllers/OnbordingSignSetUp_controller.dart';

class GenderItem extends GetView<OnbordingSignSetUpController> {
  const GenderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Column(
          children: [
            Obx(
              () => InkWell(
                onTap: () {
                  controller.isMeleSelected.value = true;
                },
                child: CustomText(
                  text: "Mela",
                  fontColor: controller.isMeleSelected.value
                      ? ColorsUtils.PRIMARY
                      : ColorsUtils.BLACK,
                  fontSize: controller.isMeleSelected.value ? 22.sp : 16.sp,
                  customFontWeight: controller.isMeleSelected.value
                      ? FontWeight.w500
                      : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Container(
                height: 1.3,
                color: ColorsUtils.GRAY_3,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Obx(
              () => InkWell(
                onTap: () {
                  controller.isMeleSelected.value = false;
                },
                child: CustomText(
                  text: "Femela",
                  fontColor: !controller.isMeleSelected.value
                      ? ColorsUtils.PRIMARY
                      : ColorsUtils.BLACK,
                  fontSize: !controller.isMeleSelected.value ? 22.sp : 16.sp,
                  customFontWeight: !controller.isMeleSelected.value
                      ? FontWeight.w500
                      : FontWeight.w400,
                ),
              ),
            ),
          ],
        ));
  }
}
