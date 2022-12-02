import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/widgets/allergy_item.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../utils/image_manager.dart';
import '../../controllers/OnbordingSignSetUp_controller.dart';

class AllergyQuestionPage extends GetView<OnbordingSignSetUpController> {
  AllergyQuestionPage({super.key});
  List<Map<String, dynamic>> data = [
    {"image": AssetsImage.heartDisease, "title": 'Egg'},
    {"image": AssetsImage.aids, "title": 'Milk'},
    {"image": AssetsImage.heartDisease, "title": 'Egg'},
    {"image": AssetsImage.aids, "title": 'Milk'},
    {"image": AssetsImage.heartDisease, "title": 'Egg'},
    {"image": AssetsImage.aids, "title": 'Milk'},
    {"image": AssetsImage.heartDisease, "title": 'Egg'},
    {"image": AssetsImage.aids, "title": 'Milk'},
    {"image": AssetsImage.heartDisease, "title": 'Egg'},
    {"image": AssetsImage.aids, "title": 'Milk'},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "Do you have any \nallergy?",
          fontSize: 28.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 1,
                childAspectRatio: (1.5 / 1),
              ),
              itemCount: data.length,
              // shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    controller.allergyItemSelected.value = index;
                  },
                  child: AllergyItem(
                    imageIcon: data[index]['image'],
                    index: index,
                    titel: data[index]['title'],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
