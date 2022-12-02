import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import '../../../../../../utils/colors.dart';
import '../../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../controllers/Store_controller.dart';
import 'widgets/product_widgets/item_cart.dart';

class CartView extends GetView<StoreController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.WHITE,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.WHITE,
        title: CustomText(
          text: "Oreder details",
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CartItem(),
            const CartItem(),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Sub Price",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                  CustomText(
                    text: "120 \$",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Discount",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.lightGreenColor,
                  ),
                  CustomText(
                    text: "20 \$",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.lightGreenColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Container(
                height: 1.h,
                color: ColorsUtils.HINT_COLOR.withOpacity(0.27),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Total",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                  CustomText(
                    text: "140 \$",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
              child: CustomRoundedButton(
                backgroundColor: ColorsUtils.PRIMARY,
                borderColor: ColorsUtils.PRIMARY,
                pressed: () {
                  Get.toNamed(AppPages.OrderProductsSammaryPage);
                },
                text: 'Place my order',
                textColor: Colors.white,
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
