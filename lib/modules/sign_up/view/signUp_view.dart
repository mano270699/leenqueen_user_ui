import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../controllers/signup_controller.dart';

class SignUpView extends GetView<SignUpController> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.BACK_GROUND,
        body: Padding(
          padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 30.h),
          child: Form(
            key: _globalKey,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (() {}),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomText(
                              text: "Skip",
                              fontColor: ColorsUtils.BLACK.withOpacity(0.4),
                              fontSize: 12,
                              customFontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: ColorsUtils.BLACK.withOpacity(0.4),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        text: 'Welcome to Lean Queen!',
                        fontSize: 20.sp,
                        fontAlign: TextAlign.center,
                        fontColor: ColorsUtils.BLACK,
                        customFontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 15.h),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Username";
                          }
                          return null;
                        },
                        controller: controller.userNameController.value,
                        textInputType: TextInputType.text,
                        hint: 'Enter Username',
                        filledColor: ColorsUtils.WHITE,
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Email Address ";
                          }
                          return null;
                        },
                        controller: controller.emailController.value,
                        hint: 'Enter Email Address ',
                        textInputType: TextInputType.emailAddress,
                        filledColor: ColorsUtils.WHITE,
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Mobile Number";
                          }
                          return null;
                        },
                        controller: controller.phoneController.value,
                        textInputType: TextInputType.phone,
                        hint: 'Enter Mobile Number',
                        filledColor: ColorsUtils.WHITE,
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password";
                          }
                          return null;
                        },
                        hasPassword: true,
                        controller: controller.passwordController.value,
                        hint: 'Password',
                        filledColor: ColorsUtils.WHITE,
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Confirm Password";
                          }
                          return null;
                        },
                        hasPassword: true,
                        controller: controller.confirmController.value,
                        hint: 'Confirm Password',
                        filledColor: ColorsUtils.WHITE,
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        // const Expanded(
                        //   child: SizedBox(),
                        // ),
                        Column(
                          children: [
                            CustomRoundedButton(
                              backgroundColor: ColorsUtils.PRIMARY,
                              borderColor: ColorsUtils.PRIMARY,
                              pressed: () {
                                // Get.toNamed(
                                //   AppPages.HOME,
                                // );
                              },
                              text: 'Sign Up',
                              textColor: Colors.white,
                              elevation: 0,
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: const Divider(
                                height: 1.2,
                                color: ColorsUtils.GRAY_3,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            CustomText(
                              text: 'Or Sign up with',
                              fontSize: 14.sp,
                              fontColor: ColorsUtils.GRAY_2,
                              customFontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 10.h),
                            CustomOutlinedButton(
                              text: "Sign in with Gmail",
                              borderColor: ColorsUtils.BLACK,
                              icon: AssetsImage.googleLogo,
                              textSize: 12.sp,
                              textColor: ColorsUtils.BLACK,
                              pressed: () {},
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(height: 10.h),
                            CustomOutlinedButton(
                              text: "Sign in with Facebook",
                              borderColor: ColorsUtils.BLACK,
                              textColor: ColorsUtils.BLACK,
                              icon: AssetsImage.facebookLogo,
                              textSize: 12.sp,
                              pressed: () {},
                              backgroundColor: Colors.transparent,
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: (() {
                            Get.toNamed(AppPages.SIGNIN);
                          }),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Don’t have account?',
                                    style: TextStyle(
                                        fontFamily: Constants.fontFamily,
                                        color: ColorsUtils.TEXT_Gray_COLOR,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: ' Sign In ',
                                    style: TextStyle(
                                        fontFamily: Constants.fontFamily,
                                        color: ColorsUtils.PRIMARY,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
