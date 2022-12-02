import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/image_manager.dart';
import '../../../../../../utils/widgets/custom_text.dart';

class UserCardHeader extends StatelessWidget {
  const UserCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        height: 270.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36), color: ColorsUtils.WHITE),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    AssetsImage.more,
                    color: ColorsUtils.moreIconColor,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: "5 Kg",
                      fontSize: 20.sp,
                      customFontWeight: FontWeight.w600,
                      fontColor: ColorsUtils.PRIMARY,
                    ),
                    CustomText(
                      text: "Weight Left",
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: ColorsUtils.HINT_COLOR,
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 8.0,
                  percent: 0.7,
                  animation: true,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "55",
                        fontSize: 20.sp,
                        customFontWeight: FontWeight.w600,
                        fontColor: ColorsUtils.PRIMARY,
                      ),
                      CustomText(
                        text: "day left",
                        fontSize: 12.sp,
                        customFontWeight: FontWeight.w500,
                        fontColor: ColorsUtils.HINT_COLOR,
                      ),
                    ],
                  ),
                  progressColor: ColorsUtils.PRIMARY,
                ),
                Column(
                  children: [
                    CustomText(
                      text: "0",
                      fontSize: 20.sp,
                      customFontWeight: FontWeight.w600,
                      fontColor: ColorsUtils.PRIMARY,
                    ),
                    CustomText(
                      text: "Burned",
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: ColorsUtils.HINT_COLOR,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Container(
                height: 1.2,
                color: const Color(0xffF4F4F4),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AppPages.UserProfilePages);
                  },
                  child: CircleAvatar(
                    backgroundImage: const AssetImage(AssetsImage.user),
                    radius: 37.sp,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Jhon Doe",
                      fontSize: 16.sp,
                      customFontWeight: FontWeight.w600,
                      fontColor: ColorsUtils.BLACK,
                    ),
                    CustomText(
                      text: "1200 Point",
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: Color(0xff7C7C7D),
                    ),
                  ],
                ),
                Container(
                  width: 80.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    color: ColorsUtils.titleGroup,
                    borderRadius: BorderRadius.circular(58),
                  ),
                  child: Center(
                    child: CustomText(
                        fontAlign: TextAlign.center,
                        text: "Group A25",
                        fontSize: 11.sp,
                        customFontWeight: FontWeight.w500,
                        fontColor: ColorsUtils.BLACK),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    Get.toNamed(AppPages.EditeUserProfilePage);
                  }),
                  child: Image.asset(AssetsImage.edite),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
