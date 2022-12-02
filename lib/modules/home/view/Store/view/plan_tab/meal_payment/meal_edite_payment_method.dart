import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import '../../../../../../../../../../utils/colors.dart';
import '../../../../../../../../../../utils/widgets/custom_rounded_btn.dart';

import '../../../../../../payment_method/controllers/payment_controller.dart';
import 'widgets/payment_method_item_card.dart';
import 'widgets/selecte_payment_method.dart';

class ChooseMealPaymentMethodView extends GetView<PaymentMethodController> {
  const ChooseMealPaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.BACK_GROUND,
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
                  text: "Add new payment method",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w500,
                  fontSize: 22.sp,
                  fontColor: ColorsUtils.BLACK),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: const SelectePaymentMethodItem(),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: InkWell(
                onTap: (() {
                  Get.toNamed(AppPages.AddPaymentMethodPage);
                }),
                child: CustomText(
                  text: "+ Add new method",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontColor: ColorsUtils.PRIMARY,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
