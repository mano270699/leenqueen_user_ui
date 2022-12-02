import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/gender_item.dart';

import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingFBSetUp_controller.dart';

class GenderFBPage extends GetView<OnbordingFBSetUpController> {
  GenderFBPage({super.key});
  List<Map<String, dynamic>> gender = [
    {
      "gender": "Male",
      "icon": AssetsImage.male,
    },
    {
      "gender": "Female",
      "icon": AssetsImage.female,
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
          text: "Please Choose your Gender",
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
                controller.genderSelected.value = index;
              },
              child: GenderItemFB(
                icon: gender[index]["icon"],
                title: gender[index]["gender"],
                index: index,
              ),
            );
          }),
          itemCount: gender.length,
        ))
      ],
    );
  }
}
