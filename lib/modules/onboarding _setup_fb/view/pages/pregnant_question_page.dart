import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/yes_or_no_Item.dart';

import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingFBSetUp_controller.dart';

class PregnantQuestionPage extends GetView<OnbordingFBSetUpController> {
  PregnantQuestionPage({super.key});
  List<Map<String, dynamic>> yesOrNo = [
    {
      "title": "Yes",
      "icon": AssetsImage.check,
    },
    {
      "title": "No",
      "icon": AssetsImage.wrong,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "Do you breastfeed?",
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 30.h,
        ),
        InkWell(
            onTap: (() {
              controller.yesPregnantSelected.value = true;
            }),
            child: YesItem(isSelected: controller.noPregnantSelected.value)),
        InkWell(
            onTap: (() {
              controller.noPregnantSelected.value = true;
            }),
            child: NoItem(isSelected: controller.noPregnantSelected.value))
      ],
    );
  }
}
