import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../controllers/calculator_controller.dart';

class CalculatorView extends GetView<CalculatorController> {
  CalculatorView({Key? key}) : super(key: key);
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ColorsUtils.WHITE,
          title: CustomText(
            text: "Calories Calculator",
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    child: Container(
                      width: 190.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: CustomText(
                              text: "0.0 KCl",
                              fontSize: 14.sp,
                              fontColor: ColorsUtils.BLACK,
                              customFontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextField(
                            contentPadding: const EdgeInsets.all(20),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Search item name here";
                              }
                              return null;
                            },
                            controller: controller.itemNameController.value,
                            hint: 'Search item name here.',
                            filledColor: ColorsUtils.WHITE,
                            borderColor: const Color(0xffF0F0F0),
                            onFieldSubmitted: (v) async {
                              if (_globalKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                              } else {
                                return;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomTextField(
                            contentPadding: const EdgeInsets.all(20),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "write item weight here";
                              }
                              return null;
                            },
                            controller: controller.itemWeightController.value,
                            hint: 'write item weight here',
                            filledColor: ColorsUtils.WHITE,
                            borderColor: const Color(0xffF0F0F0),
                            onFieldSubmitted: (v) async {
                              if (_globalKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                              } else {
                                return;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 124.w,
                      height: 168.h,
                      decoration: BoxDecoration(
                          color: ColorsUtils.imageCardCalcColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Image.asset(
                          AssetsImage.gallery,
                          fit: BoxFit.contain,
                          width: 54.w,
                          height: 54.h,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: CustomText(
                  text: "People also search about:",
                  fontSize: 14.sp,
                  fontColor: ColorsUtils.BLACK,
                  customFontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: SizedBox(
                  height: 168.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => Container(
                            width: 124.w,
                            height: 168.h,
                            decoration: BoxDecoration(
                                color: ColorsUtils.imageCardCalcColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Image.asset(
                                AssetsImage.gallery,
                                fit: BoxFit.contain,
                                width: 54.w,
                                height: 54.h,
                              ),
                            ),
                          )),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 5.w,
                          ),
                      itemCount: 10),
                ),
              )
            ],
          ),
        ));
  }
}
