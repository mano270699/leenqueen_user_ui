import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import '../../../../../utils/colors.dart';
import '../controllers/profile_controller.dart';

class AchivementHistoryView extends GetView<ProfileController> {
  const AchivementHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.BACK_GROUND,
        title: CustomText(
          text: "Achivement History",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppPages.AchivementPointsPage);
                },
                child: ConclusionCardItem(
                  icon: AssetsImage.points_icon,
                  title: "Achivement Points",
                  recommandedDesc: "5250 Point",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: CustomText(
                  text: "Today",
                  fontSize: 18.sp,
                  customFontWeight: FontWeight.w500,
                  fontColor: ColorsUtils.BLACK),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.calories,
                title: "Calories burnt",
                recommandedDesc: "225 Kcal",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.water_icon,
                title: "Water ",
                recommandedDesc: "170 oz",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.meal_icon,
                title: "Meals",
                recommandedDesc: "2 Meals",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.weight_icon,
                title: "Weight",
                recommandedDesc: ".75 Kg Lost",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: CustomText(
                  text: "Last Week",
                  fontSize: 18.sp,
                  customFontWeight: FontWeight.w500,
                  fontColor: ColorsUtils.BLACK),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.points_icon,
                title: "Achivement Points",
                recommandedDesc: "5250 Point",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.calories,
                title: "Calories burnt",
                recommandedDesc: "225 Kcal",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.water_icon,
                title: "Water ",
                recommandedDesc: "170 oz",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.meal_icon,
                title: "Meals",
                recommandedDesc: "2 Meals",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: ConclusionCardItem(
                icon: AssetsImage.weight_icon,
                title: "Weight",
                recommandedDesc: ".75 Kg Lost",
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
