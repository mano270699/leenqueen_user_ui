import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/ListWheelScrollViewX.dart';

import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingFBSetUp_controller.dart';

class HeightPage extends GetView<OnbordingFBSetUpController> {
  HeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "What is your height?",
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 40.h,
        ),
        Container(
          height: 35.h,
          width: 60.w,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorsUtils.PRIMARY),
          child: CustomText(
            fontAlign: TextAlign.center,
            text: "cm",
            fontColor: ColorsUtils.WHITE,
            fontSize: 18.sp,
            customFontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 90.h,
          child: ListWheelScrollViewX(
            scrollDirection: Axis.horizontal,
            itemExtent: 90,
            physics: const FixedExtentScrollPhysics(),
            overAndUnderCenterOpacity: 0.5,
            children: List.generate(
              180,
              (index) => Container(
                height: 80,
                width: 60,
                margin: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 4.0,
                ),
                decoration: BoxDecoration(
                  // color: ColorsUtils.PRIMARY,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  border: Border.all(
                    width: 2.0,
                    color: ColorsUtils.PRIMARY,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "${index + 10}",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
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
            return '$scaleValue cm'.toString();
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
