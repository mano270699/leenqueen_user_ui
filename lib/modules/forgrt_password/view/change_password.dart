import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/forgrt_password/controllers/forget_password_controller.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class ChangePasswordView extends GetView<ForgetPasswordController> {
  ChangePasswordView({Key? key}) : super(key: key);
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
                            "Set your new password and login again so you can access your information.",
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
                        contentPadding: const EdgeInsets.all(16),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Old Password";
                          }
                          return null;
                        },
                        hasPassword: true,
                        controller: controller.oldPasswordController.value,
                        hint: 'Old Password',
                        filledColor: ColorsUtils.WHITE,
                        onFieldSubmitted: (v) async {
                          if (_globalKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                          } else {
                            return;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        right: 23.w,
                      ),
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(16),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "New Password";
                          }
                          return null;
                        },
                        hasPassword: true,
                        controller: controller.passwordController.value,
                        hint: 'New Password',
                        filledColor: ColorsUtils.WHITE,
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
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        right: 23.w,
                      ),
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(16),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Confirm Password";
                          }
                          return null;
                        },
                        hasPassword: true,
                        controller: controller.confirmPasswordController.value,
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
                        pressed: () {},
                        text: 'Save',
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
            ],
          ),
        ));
  }
}
