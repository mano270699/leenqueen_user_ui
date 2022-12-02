import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/constants.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../utils/colors.dart';

import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 95.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      AssetsImage.welcome,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomText(
                    text: "welcome to nutrition world",
                    fontSize: 20.sp,
                    fontColor: ColorsUtils.BLACK,
                    customFontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Explore and get undescoverd places to you and start your booking in menuites.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: Constants.fontFamily,
                        color: ColorsUtils.GRAY,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 150.w,
                    child: CustomRoundedButton(
                      text: 'Get Started',
                      textColor: ColorsUtils.WHITE,
                      backgroundColor: ColorsUtils.PRIMARY,
                      pressed: () {
                        Get.toNamed(AppPages.SIGNIN);
                      },
                    ),
                  )
                ],
              )),
        ));
  }
}
