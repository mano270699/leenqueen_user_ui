import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_rounded_btn.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../utils/colors.dart';

import '../../../utils/widgets/custom_text.dart';
import '../controllers/OnbordingSignSetUp_controller.dart';

class OnbordingSignSetUp extends GetView<OnbordingSignSetUpController> {
  const OnbordingSignSetUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        body: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => LinearPercentIndicator(
                    width: 240.0.w,
                    barRadius: const Radius.circular(20),
                    lineHeight: 9.0.h,
                    percent: (controller.page.value + 1) /
                        controller.onboardingContents.length,
                    backgroundColor: ColorsUtils.GRAY_3,
                    progressColor: ColorsUtils.PRIMARY,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Obx(
                  () => CustomText(
                    text:
                        "${controller.page.value + 1}/${controller.onboardingContents.length}",
                    fontColor: Color(0xff8B8B8B),
                    fontSize: 14.sp,
                    customFontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    onPageChanged: (int index) {
                      controller.onPageChanged(index);
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller.pageController.value,
                    itemBuilder: (context, index) {
                      //indexs = index;
                      return controller.onboardingContents[index];
                    },
                    itemCount: controller.onboardingContents.length,
                  ),
                  Obx(() => controller.isFirst.value
                      ? Positioned(
                          bottom: 40.h,
                          right: 90.w,
                          child: SizedBox(
                            width: 160.w,
                            child: CustomRoundedButton(
                              text: "Next",
                              textSize: 14.sp,
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: ColorsUtils.WHITE,
                              ),
                              backgroundColor: ColorsUtils.PRIMARY,
                              pressed: (() {
                                controller.animateTo();
                              }),
                            ),
                          ),
                        )
                      : Positioned(
                          bottom: 40.h,
                          right: 20.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 160.w,
                                child: CustomOutlinedButton(
                                  text: "Back",
                                  textSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  borderColor: ColorsUtils.BLACK,
                                  textColor: ColorsUtils.BLACK,
                                  backgroundColor: ColorsUtils.WHITE,
                                  pressed: (() {
                                    controller.animateBack();
                                  }),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              SizedBox(
                                width: 160.w,
                                child: CustomRoundedButton(
                                  text: "Next",
                                  textSize: 14.sp,
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                    color: ColorsUtils.WHITE,
                                  ),
                                  backgroundColor: ColorsUtils.PRIMARY,
                                  pressed: (() {
                                    controller.animateTo();
                                  }),
                                ),
                              ),
                            ],
                          ),
                        )),
                ],
              ),
            ),

            //
          ]),
        ));
  }
}
