import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../controllers/OnbordingSignSetUp_controller.dart';

class GenderPage extends GetView<OnbordingSignSetUpController> {
  const GenderPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "What is \nyour gender?",
          fontSize: 28.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 30.h,
        ),
        const GenderItem()
      ],
    );
  }
}
