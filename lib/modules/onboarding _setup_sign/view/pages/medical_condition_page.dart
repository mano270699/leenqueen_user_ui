import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/widgets/medical_condition_item.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../utils/image_manager.dart';
import '../../controllers/OnbordingSignSetUp_controller.dart';

class MedicalCondition extends GetView<OnbordingSignSetUpController> {
  MedicalCondition({super.key});
  List<Map<String, dynamic>> data = [
    {"image": AssetsImage.heartDisease, "title": 'Heart conditions'},
    {"image": AssetsImage.aids, "title": 'HIV infection'},
    {"image": AssetsImage.heartDisease, "title": 'Heart conditions'},
    {"image": AssetsImage.aids, "title": 'HIV infection'},
    {"image": AssetsImage.heartDisease, "title": 'Heart conditions'},
    {"image": AssetsImage.aids, "title": 'HIV infection'},
    {"image": AssetsImage.heartDisease, "title": 'Heart conditions'},
    {"image": AssetsImage.aids, "title": 'HIV infection'},
    {"image": AssetsImage.heartDisease, "title": 'Heart conditions'},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "Do you have any medical condition?",
          fontSize: 28.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 5.h,
        ),
        Expanded(
            child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                controller.medicalConditionItemSelected.value = index;
              },
              child: MedicalConditionItem(
                imageIcon: data[index]['image'],
                titel: data[index]['title'],
                index: index,
              ),
            );
          }),
          itemCount: data.length,
        )),
      ],
    );
  }
}
