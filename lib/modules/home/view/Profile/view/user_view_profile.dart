import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../../utils/widgets/custom_text.dart';
import '../controllers/profile_controller.dart';
import 'widgets/profile_header.dart';
import 'widgets/user_achivement_card.dart';

class UserProfileView extends GetView<ProfileController> {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.BACK_GROUND,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: ColorsUtils.BLACK,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset(AssetsImage.open_qoute),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "Don’t stop when you are tired. Stop when you are done.",
                fontSize: 22.sp,
                customFontWeight: FontWeight.w700,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Image.asset(AssetsImage.close_qoute),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "Achivements",
                fontSize: 18.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            UserAchivementCard(),
            UserAchivementCard(),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
