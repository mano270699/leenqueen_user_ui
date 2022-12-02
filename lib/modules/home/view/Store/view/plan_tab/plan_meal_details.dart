import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../../../utils/widgets/custom_text.dart';
import '../../controllers/Store_controller.dart';
import 'widgets/plan_widegts/Ingredants_widegt.dart';
import 'widgets/plan_widegts/store_plan_widget.dart';

class PlanMealDetailsView extends GetView<StoreController> {
  const PlanMealDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.WHITE,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 257.h,
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetsImage.meal_plan),
                      fit: BoxFit.fitWidth)),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  child: const Icon(
                    Icons.arrow_back,
                    color: ColorsUtils.WHITE,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: SizedBox(
                    width: 250.w,
                    child: CustomText(
                      text: "The creamy roasted pumpkin soup",
                      fontAlign: TextAlign.start,
                      customFontWeight: FontWeight.w500,
                      fontSize: 22.sp,
                      fontColor: ColorsUtils.BLACK,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 16.h,
                        backgroundColor: ColorsUtils.PRIMARY.withOpacity(0.3),
                        child: CircleAvatar(
                            radius: 15.h,
                            backgroundColor: ColorsUtils.WHITE,
                            child: const Icon(
                              Icons.bookmark,
                              color: ColorsUtils.PRIMARY,
                            )),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Image.asset(AssetsImage.star),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            text: "4.5",
                            fontAlign: TextAlign.start,
                            customFontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            fontColor: ColorsUtils.rateColor,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text: "120EGP",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w700,
                fontSize: 13.sp,
                fontColor: ColorsUtils.PRIMARY,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Container(
                height: 1.h,
                color: ColorsUtils.HINT_COLOR.withOpacity(0.27),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text: "Ingredants",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w500,
                fontSize: 14.sp,
                fontColor: ColorsUtils.ingredantsColor,
              ),
            ),
            IngredantsCard(
              ingredants: "4 tablespoons olive oil, divided",
            ),
            IngredantsCard(
              ingredants: "One 4-pound sugar pie pumpkin",
            ),
            IngredantsCard(
              ingredants: "1 large yellow onion, chopped",
            ),
            IngredantsCard(
              ingredants:
                  "4 large or 6 medium garlic cloves, pressed or minced",
            ),
            IngredantsCard(
              ingredants: "½ teaspoon sea salt",
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text: "How to made",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w500,
                fontSize: 14.sp,
                fontColor: ColorsUtils.ingredantsColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text:
                    "Super creamy dairy-free pumpkin soup, with a little help from coconut milk or cream. It would be a welcome addition to your holiday table.",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w400,
                fontSize: 15.sp,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text:
                    "Super creamy dairy-free pumpkin soup, with a little help from coconut milk or cream. It would be a welcome addition to your holiday table.",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w400,
                fontSize: 15.sp,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text:
                    "Super creamy dairy-free pumpkin soup, elcome addition to your holiday table.",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w400,
                fontSize: 15.sp,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomRoundedButton(
                backgroundColor: ColorsUtils.PRIMARY,
                borderColor: ColorsUtils.PRIMARY,
                pressed: () {
                  Get.toNamed(AppPages.OrederDetailsPage);
                },
                text: 'Buy Recipes',
                textColor: Colors.white,
                elevation: 0,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text: "We also recomend",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w500,
                fontSize: 22.sp,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Container(
                height: 210.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => const StoreCard()),
                    separatorBuilder: ((context, index) => SizedBox(
                          width: 20.w,
                        )),
                    itemCount: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
