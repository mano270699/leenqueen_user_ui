import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/fitness_item.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/pages/widgets/gender_item.dart';

import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../utils/widgets/custom_rounded_btn.dart';
import '../../controllers/OnbordingFBSetUp_controller.dart';

class AddMedicalConditionPage extends GetView<OnbordingFBSetUpController> {
  AddMedicalConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        CustomText(
          text: "Add your Medical Condition please.",
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          fontAlign: TextAlign.center,
          customFontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 30.h,
        ),
        IntrinsicHeight(
          child: Container(
            height: 150.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                minLines: null,
                maxLines:
                    null, // If this is null, there is no limit to the number of lines, and the text container will start with enough vertical space for one line and automatically grow to accommodate additional lines as they are entered.
                expands: true,

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: ColorsUtils.BORDER_COLOR)),
                  hintText: "write everything about your medical conditions..",

                  hintStyle: TextStyle(
                    color: ColorsUtils.HINT_COLOR,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),

                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: ColorsUtils.BORDER_COLOR)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: ColorsUtils.BORDER_COLOR)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: ColorsUtils.BORDER_COLOR)),
                  // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                ), // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomOutlinedButton(
            text: "Upload your Medical test",
            icon: AssetsImage.documentUpload,
            borderColor: ColorsUtils.PRIMARY,
            fontWeight: FontWeight.w600,
            textSize: 14.sp,
            textColor: ColorsUtils.PRIMARY,
            pressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.white,
                  builder: (BuildContext context) => Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (() {
                              controller.choosePhoto();
                            }),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 20.h),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AssetsImage.gallery,
                                    width: 21.w,
                                    height: 21.w,
                                    color: ColorsUtils.BLACK,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    text: "Upload Image from Gallery",
                                    customFontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    fontColor: ColorsUtils.BLACK,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            height: 1.5,
                            color: ColorsUtils.GRAY_3,
                          ),
                          InkWell(
                            onTap: (() {
                              controller.choosePhotofromCamera();
                            }),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 20.h),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AssetsImage.camera,
                                    width: 21.w,
                                    height: 21.w,
                                    color: ColorsUtils.BLACK,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    text: "Take a Photo",
                                    customFontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    fontColor: ColorsUtils.BLACK,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                  context: context);
            },
          ),
        )
      ],
    );
  }
}
