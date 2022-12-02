import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/image_manager.dart';
import '../../../../../../utils/widgets/custom_text.dart';
import '../../controllers/profile_controller.dart';

class UploadBtn extends GetView<ProfileController> {
  UploadBtn({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: 158.w,
      decoration: BoxDecoration(
          border: const Border(
              bottom: BorderSide(color: ColorsUtils.borderColor, width: 1),
              left: BorderSide(color: ColorsUtils.borderColor, width: 1),
              right: BorderSide(color: ColorsUtils.borderColor, width: 1),
              top: BorderSide(color: ColorsUtils.borderColor, width: 1)),
          borderRadius: BorderRadius.circular(12),
          color: ColorsUtils.WHITE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsImage.export),
          CustomText(
            text: text,
            fontSize: 14.sp,
            fontColor: ColorsUtils.HINT_COLOR,
            customFontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
