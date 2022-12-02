import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../utils/widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Container(
        height: 85.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: ColorsUtils.WHITE,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AssetsImage.hand_time,
              width: 54.w,
              height: 54.h,
            ),
            SizedBox(
              width: 195.w,
              child: CustomText(
                fontAlign: TextAlign.start,
                text: 'Please upload your meals photo today!',
                fontSize: 16.sp,
                fontColor: ColorsUtils.BLACK,
                customFontWeight: FontWeight.w400,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: CustomText(
                    fontAlign: TextAlign.start,
                    text: 'Jan 2',
                    fontSize: 13.sp,
                    fontColor: ColorsUtils.HINT_COLOR,
                    customFontWeight: FontWeight.w300,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
