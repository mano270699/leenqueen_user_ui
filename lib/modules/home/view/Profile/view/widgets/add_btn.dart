import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/image_manager.dart';
import '../../../../../../utils/widgets/custom_text.dart';

class AddBtn extends StatelessWidget {
  AddBtn({super.key, this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 34.w,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffD8D8D8),
                Color(0xffEAEAEA),
                Color(0xffFFFFFF),
              ])),
      child: const Icon(
        Icons.add,
        color: ColorsUtils.HINT_COLOR,
      ),
    );
  }
}
