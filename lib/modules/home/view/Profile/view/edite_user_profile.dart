import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/upload_btn_image.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_textfield.dart';

import '../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../../utils/widgets/custom_text.dart';
import '../controllers/profile_controller.dart';
import 'widgets/profile_header.dart';
import 'widgets/user_achivement_card.dart';

class EditeUserProfileView extends GetView<ProfileController> {
  const EditeUserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.BACK_GROUND,
        title: CustomText(
          text: "Edit profile",
          fontSize: 14.sp,
          fontColor: ColorsUtils.BLACK,
          customFontWeight: FontWeight.w600,
        ),
        centerTitle: true,
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
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "Upload your picture",
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UploadBtn(text: "Picture before"),
                UploadBtn(text: "Picture after"),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "Email",
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                borderRadius: BorderRadius.circular(12),
                hint: "ahmed.yassenn3030@gmail.com",
                borderColor: ColorsUtils.borderColor,
                filledColor: ColorsUtils.WHITE,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "Mobile number",
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                borderRadius: BorderRadius.circular(12),
                hint: "+2 010 10 1414 871",
                borderColor: ColorsUtils.borderColor,
                filledColor: ColorsUtils.WHITE,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "Birthday",
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                borderRadius: BorderRadius.circular(12),
                hint: "14/2/1993",
                borderColor: ColorsUtils.borderColor,
                filledColor: ColorsUtils.WHITE,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "My plan",
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                borderRadius: BorderRadius.circular(12),
                hint: "plplpl....",
                borderColor: ColorsUtils.borderColor,
                filledColor: ColorsUtils.WHITE,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                fontAlign: TextAlign.center,
                text: "My Qoute",
                fontSize: 14.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 100.h,
                decoration: BoxDecoration(
                  color: ColorsUtils.WHITE,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  cursorColor: ColorsUtils.PRIMARY,

                  minLines: null,
                  maxLines:
                      null, // If this is null, there is no limit to the number of lines, and the text container will start with enough vertical space for one line and automatically grow to accommodate additional lines as they are entered.
                  expands: true,

                  decoration: InputDecoration(
                    fillColor: ColorsUtils.WHITE,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: ColorsUtils.borderColor)),
                    hintText:
                        "Don’t stop when you are tired. Stop when you are done.",

                    hintStyle: TextStyle(
                      color: ColorsUtils.HINT_COLOR,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),

                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: ColorsUtils.borderColor)),
                    focusColor: ColorsUtils.WHITE,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: ColorsUtils.borderColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: ColorsUtils.borderColor)),
                    // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                  ), // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: (() {
                Get.toNamed(AppPages.CHANGEPASSWORD);
              }),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: CustomText(
                  fontAlign: TextAlign.center,
                  text: "Change Password",
                  fontSize: 14.sp,
                  customFontWeight: FontWeight.w500,
                  fontColor: ColorsUtils.RED_COLOR,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
              ),
              child: CustomRoundedButton(
                backgroundColor: ColorsUtils.PRIMARY,
                borderColor: ColorsUtils.PRIMARY,
                pressed: () {},
                text: 'Save Changes',
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
    );
  }
}

/*   showModalBottomSheet(
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
            */
