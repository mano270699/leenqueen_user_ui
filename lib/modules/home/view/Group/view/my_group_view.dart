import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Group/controllers/Group_controller.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../../../utils/colors.dart';
import '../../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../../utils/widgets/custom_round_image.dart';
import '../../../../../utils/widgets/custom_textfield.dart';

class MyGroupView extends GetView<GroupController> {
  const MyGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.WHITE,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.WHITE,
        title: CustomText(
          text: "My Group",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    color: ColorsUtils.titleGroup,
                    borderRadius: BorderRadius.circular(58),
                  ),
                  child: Center(
                    child: CustomText(
                        fontAlign: TextAlign.center,
                        text: "Group A25",
                        fontSize: 11.sp,
                        customFontWeight: FontWeight.w500,
                        fontColor: ColorsUtils.BLACK),
                  ),
                ),
                CustomText(
                    fontAlign: TextAlign.center,
                    text: "51 Memmber",
                    fontSize: 11.sp,
                    customFontWeight: FontWeight.w500,
                    fontColor: ColorsUtils.HINT_COLOR),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomText(
              text: "Group progress",
              fontSize: 14.sp,
              fontColor: ColorsUtils.PRIMARY,
              customFontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LinearPercentIndicator(
                  width: 240.0.w,
                  barRadius: const Radius.circular(20),
                  lineHeight: 9.0.h,
                  percent: 0.7,
                  backgroundColor: ColorsUtils.GRAY_3,
                  progressColor: ColorsUtils.PRIMARY,
                ),
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  text: "70%",
                  fontColor: ColorsUtils.HINT_COLOR,
                  fontSize: 14.sp,
                  customFontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomText(
              text: "Memmbers",
              fontSize: 14.sp,
              fontColor: ColorsUtils.BLACK,
              customFontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomText(
                fontAlign: TextAlign.center,
                text: "51 Memmber",
                fontSize: 11.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.HINT_COLOR),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextField(
              contentPadding: const EdgeInsets.all(15),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter member name";
                }
                return null;
              },
              controller: controller.searchMemberController.value,
              icon: const Icon(Icons.search),
              hint: 'Search for member',
              filledColor: ColorsUtils.WHITE,
              onFieldSubmitted: (v) async {
                // if (_globalKey.currentState!.validate()) {
                //   FocusScope.of(context).unfocus();
                // } else {
                //   return;
                // }
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          CustomRoundImage(
                            image: AssetsImage.user,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  fontAlign: TextAlign.center,
                                  text: "Ahmed Yassen",
                                  fontSize: 14.sp,
                                  customFontWeight: FontWeight.w500,
                                  fontColor: ColorsUtils.BLACK),
                              Row(
                                children: [
                                  CustomText(
                                      fontAlign: TextAlign.center,
                                      text: "1220 point . ",
                                      fontSize: 12.sp,
                                      customFontWeight: FontWeight.w500,
                                      fontColor: ColorsUtils.HINT_COLOR),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                      fontAlign: TextAlign.center,
                                      text: " 2 july",
                                      fontSize: 12.sp,
                                      customFontWeight: FontWeight.w500,
                                      fontColor: ColorsUtils.HINT_COLOR),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                separatorBuilder: ((context, index) => SizedBox(
                      height: 20.h,
                    )),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
