import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import '../../../../../../../utils/colors.dart';
import '../../../../../../../utils/widgets/custom_rounded_btn.dart';

import '../../../utils/widgets/custom_textfield.dart';
import '../controllers/payment_controller.dart';

class AddNewCardView extends GetView<PaymentMethodController> {
  AddNewCardView({Key? key}) : super(key: key);
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: CustomText(
                        text: "Add New Card",
                        fontAlign: TextAlign.start,
                        customFontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        fontColor: ColorsUtils.BLACK),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: CustomTextField(
                      contentPadding: const EdgeInsets.all(15),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Cardholder Name";
                        }
                        return null;
                      },
                      controller: controller.cardNameController.value,
                      hint: 'Cardholder Name',
                      filledColor: ColorsUtils.WHITE,
                      onFieldSubmitted: (v) async {
                        if (_globalKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        } else {
                          return;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: CustomTextField(
                      contentPadding: const EdgeInsets.all(15),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Card Number";
                        }
                        return null;
                      },
                      sufficIcon: InkWell(
                        onTap: () {
                          controller.scanCard();
                          // Get.toNamed(AppPages.ScanePaymentCardPage);
                        },
                        child: Image.asset(
                          AssetsImage.camera,
                          color: Color(0xff292D32),
                        ),
                      ),
                      controller: controller.cardNumberController.value,
                      hint: 'Card Number',
                      filledColor: ColorsUtils.WHITE,
                      onFieldSubmitted: (v) async {
                        if (_globalKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        } else {
                          return;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        child: Container(
                          width: 160.w,
                          child: CustomTextField(
                            contentPadding: const EdgeInsets.all(15),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Expire Date";
                              }
                              return null;
                            },
                            controller: controller.exDateController.value,
                            hint: 'Expire Date',
                            sufficIcon: Image.asset(
                              AssetsImage.calendar,
                              color: Color(0xff292D32),
                            ),
                            filledColor: ColorsUtils.WHITE,
                            onFieldSubmitted: (v) async {
                              if (_globalKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                              } else {
                                return;
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        child: Container(
                          width: 160.w,
                          child: CustomTextField(
                            contentPadding: const EdgeInsets.all(15),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter CVV";
                              }
                              return null;
                            },
                            controller: controller.cVVController.value,
                            hint: ' CVV',
                            filledColor: ColorsUtils.WHITE,
                            sufficIcon: Image.asset(
                              AssetsImage.info_circle,
                              color: Color(0xff292D32),
                            ),
                            onFieldSubmitted: (v) async {
                              if (_globalKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                              } else {
                                return;
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 230.h),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
                    child: CustomRoundedButton(
                      backgroundColor: controller.isfilled.value
                          ? ColorsUtils.PRIMARY
                          : ColorsUtils.HINT_COLOR,
                      borderColor: ColorsUtils.PRIMARY,
                      pressed: () {
                        if (controller.globalKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        } else {
                          return;
                        }
                      },
                      text: 'Place my order',
                      textColor: Colors.white,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
