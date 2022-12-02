import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingFBSetUp_controller.dart';

class BirthdayFBPage extends GetView<OnbordingFBSetUpController> {
  BirthdayFBPage({super.key});
  DateTime? chosenDateTime;
  // //android datepicker
  // androidDatePicker(BuildContext context) async {
  //   chosenDateTime = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2100),
  //   );
  //   print(chosenDateTime);
  // }

//ios date picker
  iosDatePicker(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).copyWith().size.height * 0.30,
      color: Colors.white,
      child: CupertinoDatePicker(
        // minimumDate: DateTime(1990),
        // maximumDate: DateTime(2050),

        mode: CupertinoDatePickerMode.date,
        dateOrder: DatePickerDateOrder.mdy,
        backgroundColor: ColorsUtils.WHITE,
        onDateTimeChanged: (value) {
          chosenDateTime = value;
          print(chosenDateTime);
        },
        initialDateTime: DateTime.now(),
        minimumYear: 1990,
        maximumYear: 2050,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "What is your birthday?",
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 30.h,
        ),
        iosDatePicker(context),
      ],
    );
  }
}
