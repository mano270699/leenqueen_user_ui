import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../utils/image_manager.dart';
import '../../controllers/OnbordingFBSetUp_controller.dart';

class TargetWeightFBPage extends GetView<OnbordingFBSetUpController> {
  const TargetWeightFBPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "What is your target weight?",
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 80.h,
        ),
        RulerPicker(
          controller: controller.rulerPickerTargetController.value,
          beginValue: 30,
          endValue: 120,
          initValue: controller.currentValueTargetWeight.value,

          // rulerBackgroundColor: ColorsUtils.PRIMARY,
          scaleLineStyleList: const [
            ScaleLineStyle(
                color: ColorsUtils.GRAY_4, width: 1.5, height: 30, scale: 0),
            ScaleLineStyle(
                color: ColorsUtils.GRAY_4, width: 1, height: 25, scale: 5),
            ScaleLineStyle(
                color: ColorsUtils.GRAY_4, width: 1, height: 15, scale: -1)
          ],
          onBuildRulerScalueText: (index, scaleValue) {
            return '$scaleValue k’'.toString();
          },
          rulerScaleTextStyle: TextStyle(color: ColorsUtils.PRIMARY),

          onValueChange: (value) {
            controller.currentValueTargetWeight.value = value;
            print(value);
            // setState(() {
            //   currentValue = value;
            // });
          },
          width: MediaQuery.of(context).size.width,
          height: 80,
          rulerMarginTop: 8,
          marker: Container(
            // width: 8,
            height: 50,
            child: Image.asset(
              AssetsImage.marker,
              // height: 100.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
