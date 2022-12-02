import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/image_manager.dart';
import '../../../../../../utils/widgets/custom_text.dart';

class BeforeAfterCard extends StatelessWidget {
  BeforeAfterCard({super.key, required this.image, required this.text});
  String text;
  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 165.h,
          width: 160.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
              borderRadius: BorderRadius.circular(12),
              color: ColorsUtils.WHITE),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 26.h,
              width: 160.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorsUtils.PRIMARY),
              child: Center(
                child: CustomText(
                  text: text,
                  fontAlign: TextAlign.center,
                  fontSize: 12.sp,
                  customFontWeight: FontWeight.w500,
                  fontColor: ColorsUtils.WHITE,
                ),
              ),
            ))
      ],
    );
  }
}
