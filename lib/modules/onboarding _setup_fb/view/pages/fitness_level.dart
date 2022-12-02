import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/fitness_item.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/gender_item.dart';

import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingFBSetUp_controller.dart';

class FitnessLevelPage extends GetView<OnbordingFBSetUpController> {
  FitnessLevelPage({super.key});
  List<Map<String, dynamic>> fitnessLevel = [
    {
      "fitness_level": "Beginner",
      "icon": AssetsImage.beginner,
      "desc": "I don’t exercise at all",
    },
    {
      "fitness_level": "Intermediate",
      "icon": AssetsImage.intermediate,
      "desc": "I exercise frequently at home",
    },
    {
      "fitness_level": "Professional",
      "icon": AssetsImage.professional,
      "desc": "Exercise is an essential part of my routine",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "What is your fitness level?",
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
            child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                controller.fitnessItemSelected.value = index;
              },
              child: FitnessItem(
                icon: fitnessLevel[index]["icon"],
                title: fitnessLevel[index]["fitness_level"],
                desc: fitnessLevel[index]["desc"],
                index: index,
              ),
            );
          }),
          itemCount: fitnessLevel.length,
        ))
      ],
    );
  }
}
