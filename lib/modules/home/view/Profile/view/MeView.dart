import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/before_after_card.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/me_card_header.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../utils/colors.dart';

import '../controllers/profile_controller.dart';
import 'widgets/water_card.dart';
import 'widgets/weight_card.dart';

class MeView extends GetView<ProfileController> {
  const MeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            const UserCardHeader(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BeforeAfterCard(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShIIEwWvENtYPKH6B1j_XjRhxEWrsaraNOJQ&usqp=CAU",
                  text: "Before",
                ),
                BeforeAfterCard(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7G7IRgGh2vYTH0FZxX4vadaOZD-RTrsnyiA&usqp=CAU",
                  text: "After",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: ColorsUtils.HINT_COLOR,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppPages.AchivementHistoryPage);
                    },
                    child: CustomText(
                      text: 'day conclusion',
                      fontColor: ColorsUtils.HINT_COLOR,
                      fontSize: 11.sp,
                      customFontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: ColorsUtils.HINT_COLOR,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: InkWell(
                onTap: (() {
                  Get.toNamed(AppPages.CalculatorPage);
                }),
                child: ConclusionCardItem(
                  icon: AssetsImage.calories,
                  title: "Calories Calculator",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.breakfast,
                title: "Add breakfast",
                recommandedDesc: "Recomended 25-256 cal",
                isHasBtn: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.calories,
                title: "Add lunch",
                recommandedDesc: "Recomended 25-256 cal",
                isHasBtn: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.ex,
                title: "Add Exercise",
                recommandedDesc: "Recomended 25-256 cal",
                isHasBtn: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.breakfast,
                title: "Add breakfast",
                recommandedDesc: "Recomended 25-256 cal",
                isHasBtn: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.lunch,
                title: "Add lunch",
                recommandedDesc: "Recomended 25-256 cal",
                isHasBtn: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: WeightCard(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: WaterCard(
                title: "Water Reminder",
                recommandedDesc: "Recomended 25-256 cal",
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
          ],
        ),
      ),
    );

    ;
  }
}
