import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/widgets/gender_item.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../utils/widgets/custom_textfield.dart';
import '../../controllers/OnbordingSignSetUp_controller.dart';

class TellMoreAboutYouPage extends GetView<OnbordingSignSetUpController> {
  TellMoreAboutYouPage({super.key});
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            CustomText(
              text: "Tell us more \nabout yourself",
              fontSize: 28.sp,
              fontColor: ColorsUtils.BLACK,
              fontAlign: TextAlign.center,
              customFontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 10.h,
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: " What do you wants to call you?",
                      fontSize: 14.sp,
                      fontColor: ColorsUtils.BLACK,
                      fontAlign: TextAlign.center,
                      customFontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                      contentPadding: const EdgeInsets.all(20),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "name";
                        }
                        return null;
                      },
                      controller: controller.nameController.value,
                      textInputType: TextInputType.name,
                      borderColor: ColorsUtils.GRAY,
                      hint: 'Jhon doe',
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
                    CustomText(
                      text: "Your address",
                      fontSize: 14.sp,
                      fontColor: ColorsUtils.BLACK,
                      fontAlign: TextAlign.center,
                      customFontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                      contentPadding: const EdgeInsets.all(20),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "your address";
                        }
                        return null;
                      },
                      textInputType: TextInputType.streetAddress,
                      controller: controller.addressController.value,
                      borderColor: ColorsUtils.GRAY,
                      hint: 'Write address here',
                      filledColor: ColorsUtils.WHITE,
                      onFieldSubmitted: (v) async {
                        if (_globalKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        } else {
                          return;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Allow app tips",
                          fontSize: 14.sp,
                          fontColor: ColorsUtils.BLACK,
                          fontAlign: TextAlign.center,
                          customFontWeight: FontWeight.w500,
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: controller.switchValue.value,
                            dragStartBehavior: DragStartBehavior.down,
                            onChanged: (value) {
                              controller.switchValue.value = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 180.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
