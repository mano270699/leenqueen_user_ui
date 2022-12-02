import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/forgrt_password/controllers/forget_password_controller.dart';
import 'package:leenqueen_user/modules/forgrt_password/view/widgets/build_pin_code.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class ConfirmCode extends GetView<ForgetPasswordController> {
  ConfirmCode({Key? key}) : super(key: key);
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
                            "Enter 4 digit code thatyou received on your phone number.",
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
                        child: CustomPinCode(
                          onChanged: ((value) {
                            print(value);
                          }),
                          onCompleted: ((submitedCode) {
                            print("Completed");
                          }),
                        )),
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
                          Get.toNamed(AppPages.NEWPASSWORD);
                        },
                        text: 'Confirm',
                        textColor: Colors.white,
                        elevation: 0,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CustomText(
                            text: "Resend",
                            hasUnderLineBorder: true,
                            fontColor: ColorsUtils.PRIMARY,
                            fontSize: 12.sp,
                            customFontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomText(
                          text: "(within 1:30 min)",
                          fontColor: ColorsUtils.HINT_COLOR,
                          fontSize: 12.sp,
                          customFontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
