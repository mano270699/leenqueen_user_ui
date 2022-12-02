import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/widgets/product_widgets/product_item.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../../../../utils/widgets/custom_text.dart';
import '../../../controllers/Store_controller.dart';
import '../../plan_tab/widgets/plan_widegts/Ingredants_widegt.dart';
import 'product_widgets/add_to_cart_btn.dart';

class ProductDetailsView extends GetView<StoreController> {
  const ProductDetailsView({super.key});

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
                image: AssetImage(AssetsImage.product_image),
              )),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  child: const Icon(
                    Icons.arrow_back,
                    color: ColorsUtils.HINT_COLOR,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250.w,
                        child: CustomText(
                          text: "The creamy roasted pumpkin soup",
                          fontAlign: TextAlign.start,
                          customFontWeight: FontWeight.w500,
                          fontSize: 22.sp,
                          fontColor: ColorsUtils.BLACK,
                        ),
                      ),
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
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "120EGP",
                        fontAlign: TextAlign.start,
                        customFontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        fontColor: ColorsUtils.PRIMARY,
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
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Container(
                height: 1.h,
                color: ColorsUtils.HINT_COLOR.withOpacity(0.27),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                text: "Description",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w500,
                fontSize: 14.sp,
                fontColor: ColorsUtils.ingredantsColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: CustomText(
                text:
                    "100% natural sugar-free apricot sweetened with stevia sugar, suitable for keto diet followers",
                fontAlign: TextAlign.start,
                customFontWeight: FontWeight.w400,
                fontSize: 12.sp,
                fontColor: const Color(0xff2E3E5C),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            IngredantsCard(
              ingredants: "Protein 0.1 per 15g",
            ),
            IngredantsCard(
              ingredants: "Calories 7 per 15 grams",
            ),
            IngredantsCard(
              ingredants: "Weight 180 grams",
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => !controller.isReadyToCart.value
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: CustomRoundedButton(
                        backgroundColor: ColorsUtils.PRIMARY,
                        borderColor: ColorsUtils.PRIMARY,
                        pressed: () {
                          controller.isReadyToCart.value = true;
                          // Get.toNamed(AppPages.OrederDetailsPage);
                        },
                        text: 'Add to Cart',
                        textColor: Colors.white,
                        elevation: 0,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Obx(() => AddToCartBtn(
                            text: controller.itemCounte.value == 1
                                ? "Buy 1 Item"
                                : "Buy ${controller.itemCounte.value} Items",
                          ))),
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
                height: 200.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => const ProductCard()),
                    separatorBuilder: ((context, index) => SizedBox(
                          width: 20.w,
                        )),
                    itemCount: 5),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
