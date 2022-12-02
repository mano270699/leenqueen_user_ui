import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../../../utils/widgets/custom_rounded_btn.dart';

class MealTimeDialog extends StatefulWidget {
  MealTimeDialog({
    Key? key,
  }) : super(key: key);

  @override
  _MealTimeDialogState createState() => _MealTimeDialogState();
}

class _MealTimeDialogState extends State<MealTimeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: ColorsUtils.WHITE,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(AssetsImage.bg_icon),
                      Positioned(
                          bottom: -5.h,
                          right: 0.w,
                          left: -5.w,
                          child: Image.asset(AssetsImage.hand_time)),
                    ],
                  ),
                  CustomText(
                    text: "Meal photo time",
                    fontColor: ColorsUtils.BLACK,
                    fontSize: 20.sp,
                    customFontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 160.w,
                    child: CustomText(
                      text: "Please upload your meals photo today!",
                      fontColor: ColorsUtils.HINT_COLOR,
                      fontAlign: TextAlign.center,
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 155.w,
                    child: CustomRoundedButton(
                      text: "Upload now",
                      backgroundColor: ColorsUtils.PRIMARY,
                      pressed: () {},
                      textColor: ColorsUtils.WHITE,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 160.w,
                    child: CustomText(
                      text: "Remind me later",
                      fontColor: ColorsUtils.HINT_COLOR,
                      fontAlign: TextAlign.center,
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
