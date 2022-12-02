import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';

import 'widgets/plan_widegts/store_plan_widget.dart';

class StorePlanPage extends StatelessWidget {
  const StorePlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: (1 / 1.4),
        ),
        itemCount: 10,
        // shrinkWrap: true,
        padding: EdgeInsets.only(top: 10.h),
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                Get.toNamed(AppPages.PlanMealDetailsPage);
              },
              child: const StoreCard());
        },
      ),
    );
  }
}
