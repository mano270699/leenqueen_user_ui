import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/image_manager.dart';
import '../../../../../../utils/widgets/custom_text.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class WeightCard extends StatelessWidget {
  WeightCard({super.key, this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: ColorsUtils.WHITE),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: CustomText(
                text: "Updated Weight",
                fontSize: 16.sp,
                customFontWeight: FontWeight.w500,
                fontColor: ColorsUtils.BLACK,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 170.h,

              child: Stack(
                alignment: Alignment.center,
                children: [
                  CreditScoreGauge(),
                  Positioned(
                    bottom: 80.h,
                    right: 120.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "🔥 75 Kg",
                          fontSize: 16.sp,
                          customFontWeight: FontWeight.w500,
                          fontColor: ColorsUtils.BLACK,
                        ),
                        CustomText(
                          text: "Goal 70 Kg",
                          fontSize: 12.sp,
                          customFontWeight: FontWeight.w500,
                          fontColor: ColorsUtils.HINT_COLOR,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // color: Colors.amber,
            ),
          ],
        ));
  }
}

class CreditScoreGauge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      axes: <RadialAxis>[
        RadialAxis(
          showLabels: false,
          showTicks: false,
          minimum: 300,
          maximum: 850,
          startAngle: 180,
          endAngle: 0,
          axisLineStyle: const AxisLineStyle(
            thickness: 0.20,
            cornerStyle: CornerStyle.bothCurve,
            thicknessUnit: GaugeSizeUnit.factor,
            color: Color(0xfffeaa00),
            gradient: SweepGradient(colors: <Color>[
              Color(0xfffff074),
              Color(0xffffe802),
              Color(0xfffeaa00),
              Color(0Xfffeaa00),
              Color(0xfffeaa00),
            ], stops: <double>[
              0,
              0.35,
              0.7,
              0.8,
              1.0
            ]),
          ),
          pointers: const <GaugePointer>[
            MarkerPointer(
                value: 700,
                markerHeight: 18,
                markerWidth: 18,
                markerType: MarkerType.triangle,
                enableDragging: true,
                color: Color(0xffffe802),
                borderWidth: 0,
                elevation: 10,
                borderColor: Color.fromARGB(255, 255, 255, 255)),
          ],
        ),
      ],
    );
  }
}
