import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../controllers/signIn_controller.dart';

class SignInView extends GetView<SignInController> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  SignInView({Key? key}) : super(key: key);

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
                        onTap: () {},
                        child: Row(
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
                        height: 30.h,
                      ),
                      CustomText(
                        text: 'Welcome to Lean Queen!',
                        fontSize: 20.sp,
                        fontAlign: TextAlign.center,
                        fontColor: ColorsUtils.BLACK,
                        customFontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 33.h),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Username";
                          }
                          return null;
                        },
                        controller: controller.userNameController.value,
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
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppPages.FORGETPASSWORD);
                            },
                            child: CustomText(
                              text: 'Forget Password?',
                              fontSize: 14.sp,
                              fontColor: ColorsUtils.PRIMARY,
                              customFontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
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
                                Get.toNamed(
                                  AppPages.SETUPUSER,
                                );
                              },
                              text: 'Sign In',
                              textColor: Colors.white,
                              elevation: 0,
                            ),
                            SizedBox(height: 40.h),
                            const Divider(
                              height: 1.2,
                              color: ColorsUtils.GRAY_3,
                            ),
                            SizedBox(height: 20.h),
                            CustomText(
                              text: 'Or Sign in with',
                              fontSize: 14.sp,
                              fontColor: ColorsUtils.GRAY_2,
                              customFontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 20.h),
                            CustomOutlinedButton(
                              text: "Sign in with Gmail",
                              borderColor: ColorsUtils.BLACK,
                              icon: AssetsImage.googleLogo,
                              textSize: 12.sp,
                              textColor: ColorsUtils.BLACK,
                              pressed: () {},
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(height: 15.h),
                            CustomOutlinedButton(
                              text: "Sign in with Facebook",
                              borderColor: ColorsUtils.BLACK,
                              textColor: ColorsUtils.BLACK,
                              icon: AssetsImage.facebookLogo,
                              textSize: 12.sp,
                              pressed: () {
                                Get.toNamed(AppPages.SETUPUSERFB);
                              },
                              backgroundColor: Colors.transparent,
                            ),
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (() {
                            Get.toNamed(AppPages.SIGNUP);
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
                                    text: ' Sign Up ',
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
                          height: 20.h,
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
