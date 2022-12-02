import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../utils/colors.dart';
import '../../../utils/widgets/custom_dialog.dart';
import '../../../utils/widgets/custom_round_image.dart';
import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.WHITE,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: ColorsUtils.WHITE,
                height: 175.h,
              ),
              Stack(
                children: [
                  Container(
                    height: 140.h,
                    color: ColorsUtils.PRIMARY.withOpacity(0.7),
                    child: Image.asset(
                      AssetsImage.portfolio,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomRoundImage(
                      border: true,
                      paddingValue: 2,
                      borderColor: ColorsUtils.PRIMARY,
                      size: const Size.fromRadius(45),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          CustomText(
            text: 'Doctor Name',
            fontSize: 18.sp,
            fontColor: ColorsUtils.BLACK,
            customFontWeight: FontWeight.w600,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 6.h),
            child: Column(children: [
              info(),
              SizedBox(height: 16.h),
              SizedBox(
                height: 64.h,
                width: MediaQuery.of(context).size.width - 46.w,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(() {
                        return InkWell(
                          onTap: () {
                            controller.selectedLabel.value = index;
                          },
                          child: Container(
                            width:
                                (MediaQuery.of(context).size.width - 75.w) / 3,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 5.h),
                            decoration: BoxDecoration(
                              color: controller.selectedLabel.value == index
                                  ? ColorsUtils.PRIMARY
                                  : ColorsUtils.WHITE,
                              border: Border.all(color: ColorsUtils.PRIMARY),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  height: 28.h,
                                  width: 28.w,
                                  controller.labels[index]['image']!,
                                  color: controller.selectedLabel.value == index
                                      ? ColorsUtils.WHITE
                                      : ColorsUtils.PRIMARY,
                                ),
                                CustomText(
                                  text: controller.labels[index]['title']!,
                                  fontSize: 15.sp,
                                  fontColor:
                                      controller.selectedLabel.value == index
                                          ? ColorsUtils.WHITE
                                          : ColorsUtils.PRIMARY,
                                  customFontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 12.h,
                      );
                    },
                    itemCount: controller.labels.length),
              ),
            ]),
          ),
          Obx(() {
            return controller.selectedLabel.value == 0
                ? articles()
                : controller.selectedLabel.value == 1
                    ? videos(context)
                    : pictures(context);
          }),
        ],
      ),
    );
  }
}

Widget info() {
  return Row(
    children: [
      Expanded(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 5.h),
          decoration: BoxDecoration(
            color: ColorsUtils.BACK_GROUND,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsImage.profileUser),
              SizedBox(width: 3),
              CustomText(
                text: '+250',
                fontSize: 16.sp,
                fontColor: ColorsUtils.PRIMARY,
                customFontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 23.w),
      Expanded(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 5.h),
          decoration: BoxDecoration(
            color: ColorsUtils.BACK_GROUND,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/briefcase.svg'),
              const SizedBox(width: 3),
              CustomText(
                text: '4 years',
                fontSize: 16.sp,
                fontColor: ColorsUtils.PRIMARY,
                customFontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget articles() {
  return Expanded(
      child: Stack(
    children: [
      ListView.separated(
          padding:
              EdgeInsets.only(left: 23.w, right: 23.w, top: 15.h, bottom: 65.h),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: ColorsUtils.BACK_GROUND,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Article Title',
                    fontSize: 16.sp,
                    fontColor: ColorsUtils.BLACK,
                    customFontWeight: FontWeight.w400,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomText(
                      text: "read",
                      hasUnderLineBorder: true,
                      fontColor: ColorsUtils.PRIMARY,
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10.h,
            );
          },
          itemCount: 6),
    ],
  ));
}

Widget videos(context) {
  return Expanded(
      child: Stack(
    children: [
      GridView.builder(
          padding: EdgeInsets.only(
            left: 23.w,
            right: 23.w,
            bottom: 65.h,
            top: 15.h,
          ),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              // childAspectRatio: 0.85,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.62),
              crossAxisSpacing: 10,
              mainAxisSpacing: 5),
          itemCount: 8,
          itemBuilder: (BuildContext ctx, index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 170.h,
                  decoration: BoxDecoration(
                      color: ColorsUtils.WHITE,
                      borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        AssetsImage.p_videos,
                        scale: 4,
                        fit: BoxFit.fill,
                      )),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsUtils.PRIMARY,
                    ),
                    child: SvgPicture.asset(AssetsImage.play,
                        height: 20, width: 20),
                  ),
                ),
              ],
            );
          }),
    ],
  ));
}

Widget pictures(context) {
  return Expanded(
      child: Stack(
    children: [
      GridView.builder(
          padding: EdgeInsets.only(
            left: 23.w,
            right: 23.w,
            bottom: 65.h,
            top: 15.h,
          ),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.62),
              // childAspectRatio: 0.85,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5),
          itemCount: 8,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              height: 170.h,
              decoration: BoxDecoration(
                  color: ColorsUtils.WHITE,
                  borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AssetsImage.p_videos,
                    scale: 4,
                    fit: BoxFit.fill,
                  )),
            );
          }),
    ],
  ));
}
