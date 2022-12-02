import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/plan_tab/plans_page.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/plan_tab/widgets/plan_widegts/store_plan_widget.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/products_page.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/widgets/custom_text.dart';
import '../../My_Plan/view/widgets/plan_card.dart';
import '../controllers/Store_controller.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        appBar: AppBar(
          backgroundColor: ColorsUtils.WHITE,
          elevation: 0.2,
          title: CustomText(
            text: "Shopping basket",
            fontSize: 22.sp,
            fontColor: ColorsUtils.BLACK,
            customFontWeight: FontWeight.w600,
          ),
          bottom: TabBar(
            controller: controller.tabController,
            indicatorColor: ColorsUtils.PRIMARY,
            labelColor: ColorsUtils.PRIMARY,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.only(bottom: 5.h),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10.w),
            tabs: [
              Tab(
                child: Obx(
                  () => CustomText(
                    text: "Plans",
                    fontSize: 16.sp,
                    customFontWeight: controller.isPlan.value
                        ? FontWeight.w600
                        : FontWeight.w500,
                    fontColor: controller.isPlan.value
                        ? ColorsUtils.PRIMARY
                        : ColorsUtils.HINT_COLOR,
                  ),
                ),
              ),
              Tab(
                child: Obx(
                  () => CustomText(
                    text: "Products",
                    fontSize: 16.sp,
                    customFontWeight: !controller.isPlan.value
                        ? FontWeight.w600
                        : FontWeight.w500,
                    fontColor: !controller.isPlan.value
                        ? ColorsUtils.PRIMARY
                        : ColorsUtils.HINT_COLOR,
                  ),
                ),
              ),
            ],
            onTap: ((value) {
              print(value);
              if (value == 0) {
                controller.isPlan.value = true;
              } else {
                controller.isPlan.value = false;
              }
            }),
          ),
        ),
        body: TabBarView(
          controller: controller.tabController,
          physics: NeverScrollableScrollPhysics(),
          children: const [StorePlanPage(), StoreProductsPage()],
        ),
      ),
    );
  }
}
