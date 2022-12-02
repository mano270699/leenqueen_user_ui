import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/widgets/product_widgets/product_item.dart';
import 'package:leenqueen_user/routes/app_pages.dart';

class StoreProductsPage extends StatelessWidget {
  const StoreProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: (1 / 1.3),
        ),
        itemCount: 10,
        // shrinkWrap: true,
        padding: EdgeInsets.only(top: 10.h),
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                Get.toNamed(AppPages.ProductDetailspage);
              },
              child: const ProductCard());
        },
      ),
    );
  }
}
