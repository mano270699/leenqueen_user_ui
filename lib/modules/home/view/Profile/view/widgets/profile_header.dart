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

class ProfileHeader extends GetView<ProfileController> {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        height: 238.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36), color: ColorsUtils.WHITE),
        child: Column(
          children: [
            Container(
              height: 135.h,
              child: Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: 327.w,
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: ColorsUtils.PRIMARY),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Image.asset(
                        AssetsImage.more,
                        color: ColorsUtils.WHITE,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 110.w,
                    child: CircleAvatar(
                      backgroundColor: ColorsUtils.WHITE,
                      radius: 50.w,
                      child: CircleAvatar(
                        backgroundImage: const AssetImage(AssetsImage.user),
                        radius: 40.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              text: "Jhon Doe",
              fontSize: 16.sp,
              customFontWeight: FontWeight.w600,
              fontColor: ColorsUtils.BLACK,
            ),
            CustomText(
              text: "1200 Point",
              fontSize: 12.sp,
              customFontWeight: FontWeight.w600,
              fontColor: Color(0xff7C7C7D),
            ),
            SizedBox(
              height: 5.h,
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
          ],
        ),
      ),
    );
  }
}
