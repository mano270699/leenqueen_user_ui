import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../controllers/OnbordingSignSetUp_controller.dart';

class AllergyItem extends GetView<OnbordingSignSetUpController> {
  AllergyItem({
    super.key,
    required this.imageIcon,
    required this.titel,
    required this.index,
  });
  String imageIcon;
  String titel;
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Obx(
        () => Container(
          height: 92.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: controller.allergyItemSelected.value == index
                  ? Border.all(color: ColorsUtils.PRIMARY)
                  : const Border(
                      bottom: BorderSide.none,
                      left: BorderSide.none,
                      right: BorderSide.none,
                      top: BorderSide.none),
              color: controller.allergyItemSelected.value == index
                  ? ColorsUtils.Selected_Card_COLOR
                  : ColorsUtils.Card_Gray_COLOR),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imageIcon,
                height: 40.0.w,
                width: 40.0.w,
              ),
              CustomText(
                text: titel,
                fontSize: 16.sp,
                customFontWeight: FontWeight.w400,
                fontColor: ColorsUtils.BLACK,
              ),
              controller.allergyItemSelected.value == index
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.h),
                        child: CircleAvatar(
                          radius: 14.w,
                          backgroundColor: ColorsUtils.WHITE,
                          child: const Icon(Icons.check,
                              color: ColorsUtils.PRIMARY),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
