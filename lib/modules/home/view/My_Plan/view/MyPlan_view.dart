import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/My_Plan/controllers/MyPlan_controller.dart';
import 'package:leenqueen_user/modules/home/view/My_Plan/view/widgets/plan_card.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../../utils/colors.dart';

class MyPlanView extends GetView<MyPlanController> {
  //final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  const MyPlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ColorsUtils.WHITE,
          title: Image.asset(
            AssetsImage.app_name,
            width: 128.w,
            height: 50.h,
          ),
          actions: [
            CircleAvatar(
              backgroundImage: const AssetImage(AssetsImage.user),
              radius: 20.sp,
            ),
            SizedBox(
              width: 15.w,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              PlanCard(
                onTapDowenload: () {},
                title: "Your Weekly Plan",
              ),
              SizedBox(
                height: 10.h,
              ),
              PlanCard(
                onTapDowenload: () {},
                title: "Your Monthly Plan",
              ),
            ],
          ),
        ));
  }
}
