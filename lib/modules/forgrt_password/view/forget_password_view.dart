import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/forgrt_password/controllers/forget_password_controller.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  ForgetPasswordView({Key? key}) : super(key: key);
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
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
        body: Form(
          key: _globalKey,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Image.asset(
                      AssetsImage.logo,
                      height: 115.h,
                      width: 100.w,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        right: 23.w,
                      ),
                      child: CustomText(
                        text:
                            "Enter your Phone number or Email Address for the verfication process, we will send 4 digit code to your number.",
                        fontSize: 12.sp,
                        fontColor: ColorsUtils.GRAY,
                        customFontWeight: FontWeight.w400,
                        fontAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        right: 23.w,
                      ),
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(20),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Email or Mobile no.";
                          }
                          return null;
                        },
                        controller: controller.emailOrPhoneController.value,
                        hint: 'Enter Email or Mobile no.',
                        filledColor: ColorsUtils.WHITE,
                        borderColor: const Color(0xffF0F0F0),
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        right: 23.w,
                      ),
                      child: CustomRoundedButton(
                        backgroundColor: ColorsUtils.PRIMARY,
                        borderColor: ColorsUtils.PRIMARY,
                        pressed: () {
                          Get.toNamed(AppPages.CONFIRMCODE);
                        },
                        text: 'Send code',
                        textColor: Colors.white,
                        elevation: 0,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              // SliverFillRemaining(
              //   hasScrollBody: false,
              //   child: IntrinsicHeight(
              //     child: Column(
              //       mainAxisSize: MainAxisSize.max,
              //       children: <Widget>[
              //         // const Expanded(
              //         //   child: SizedBox(),
              //         // ),
              //         Column(
              //           children: [
              //             CustomRoundedButton(
              //               backgroundColor: ColorsUtils.PRIMARY,
              //               borderColor: ColorsUtils.PRIMARY,
              //               pressed: () {
              //                 // Get.toNamed(
              //                 //   AppPages.HOME,
              //                 // );
              //               },
              //               text: 'Sign In',
              //               textColor: Colors.white,
              //               elevation: 0,
              //             ),
              //             SizedBox(height: 40.h),
              //             const Divider(
              //               height: 1.2,
              //               color: ColorsUtils.GRAY_3,
              //             ),
              //             SizedBox(height: 20.h),
              //             CustomText(
              //               text: 'Or Sign in with',
              //               fontSize: 14.sp,
              //               fontColor: ColorsUtils.GRAY_2,
              //               customFontWeight: FontWeight.w400,
              //             ),
              //             SizedBox(height: 20.h),
              //             CustomOutlinedButton(
              //               text: "Sign in with Gmail",
              //               borderColor: ColorsUtils.BLACK,
              //               icon: AssetsImage.googleLogo,
              //               textSize: 12.sp,
              //               textColor: ColorsUtils.BLACK,
              //               pressed: () {},
              //               backgroundColor: Colors.transparent,
              //             ),
              //             SizedBox(height: 15.h),
              //             CustomOutlinedButton(
              //               text: "Sign in with Facebook",
              //               borderColor: ColorsUtils.BLACK,
              //               textColor: ColorsUtils.BLACK,
              //               icon: AssetsImage.facebookLogo,
              //               textSize: 12.sp,
              //               pressed: () {},
              //               backgroundColor: Colors.transparent,
              //             ),
              //           ],
              //         ),
              //         Spacer(),
              //         InkWell(
              //           onTap: (() {
              //             Get.toNamed(AppPages.SIGNUP);
              //           }),
              //           child: Text.rich(
              //             TextSpan(
              //               children: [
              //                 TextSpan(
              //                     text: 'Don’t have account?',
              //                     style: TextStyle(
              //                         fontFamily: Constants.fontFamily,
              //                         color: ColorsUtils.TEXT_Gray_COLOR,
              //                         fontSize: 14.sp,
              //                         fontWeight: FontWeight.w500)),
              //                 TextSpan(
              //                     text: ' Sign Up ',
              //                     style: TextStyle(
              //                         fontFamily: Constants.fontFamily,
              //                         color: ColorsUtils.PRIMARY,
              //                         fontSize: 14.sp,
              //                         fontWeight: FontWeight.w500)),
              //               ],
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20.h,
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
