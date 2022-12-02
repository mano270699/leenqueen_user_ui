import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/widgets/custom_rounded_btn.dart';
import '../controllers/profile_controller.dart';

class AchivementPointsView extends GetView<ProfileController> {
  const AchivementPointsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsUtils.BACK_GROUND,
        title: CustomText(
          text: "Achivement Points",
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: ConclusionCardItem(
                    icon: AssetsImage.points_icon,
                    title: "Achivement Points",
                    recommandedDesc: "5250 Point",
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: CustomText(
                      text: "Details",
                      fontSize: 18.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: ColorsUtils.BLACK),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: ConclusionCardItem(
                    icon: AssetsImage.calories,
                    title: "Calories burnt",
                    recommandedDesc: "225 Kcal",
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: ConclusionCardItem(
                    icon: AssetsImage.water_icon,
                    title: "Water ",
                    recommandedDesc: "170 oz",
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: ConclusionCardItem(
                    icon: AssetsImage.weight_icon,
                    title: "Weight",
                    recommandedDesc: ".75 Kg Lost",
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
              child: CustomRoundedButton(
                backgroundColor: ColorsUtils.PRIMARY,
                borderColor: ColorsUtils.PRIMARY,
                pressed: () {},
                text: 'Redeem',
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
