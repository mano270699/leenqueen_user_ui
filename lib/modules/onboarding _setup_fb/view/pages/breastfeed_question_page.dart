import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/yes_or_no_Item.dart';

import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingFBSetUp_controller.dart';

class BreastfeedQuestionPage extends GetView<OnbordingFBSetUpController> {
  BreastfeedQuestionPage({super.key});
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
              controller.yesBreadstfeedSelected.value = true;
              controller.noBreadstfeedSelected.value = false;
            }),
            child:
                YesItem(isSelected: controller.yesBreadstfeedSelected.value)),
        InkWell(
            onTap: (() {
              controller.yesBreadstfeedSelected.value = false;
              controller.noBreadstfeedSelected.value = true;
            }),
            child: NoItem(isSelected: controller.noBreadstfeedSelected.value))
      ],
    );
  }
}
