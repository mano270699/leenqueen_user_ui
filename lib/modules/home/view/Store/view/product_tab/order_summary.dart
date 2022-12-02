import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/widgets/product_widgets/address_item.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import '../../../../../../../utils/colors.dart';
import '../../../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../../../routes/app_pages.dart';
import '../../controllers/Store_controller.dart';
import '../plan_tab/meal_payment/widgets/payment_method_item_card.dart';

class OrderProductsSammary extends GetView<StoreController> {
  const OrderProductsSammary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.WHITE,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.WHITE,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomText(
                  text: "Order Summary",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w500,
                  fontSize: 22.sp,
                  fontColor: ColorsUtils.BLACK),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: PaymentMethodItem(onEditeTap: (() {
                Get.toNamed(AppPages.ProductAddNewPaymentMethodPage);
              })),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: const DeliveryMethodItem(),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Container(
                height: 1.h,
                color: ColorsUtils.HINT_COLOR.withOpacity(0.27),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Meal price",
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
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 3.h),
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
                    text: "Sub total",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                  CustomText(
                    text: "140 \$",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
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
                    text: "Delivery",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.BLACK,
                  ),
                  CustomText(
                    text: "140 \$",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
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
                    text: "Total Price",
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
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: CustomRoundedButton(
                backgroundColor: ColorsUtils.PRIMARY,
                borderColor: ColorsUtils.PRIMARY,
                pressed: () {
                  Get.toNamed(AppPages.TrackingOrderPage);
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
