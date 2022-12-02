import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';

import '../../../../utils/image_manager.dart';
import '../../controllers/tracking_controller.dart';

class StepProgressView extends GetView<TrackingController> {
  final double _width;

  final List<String> _titles;

  final Color _activeColor;
  final Color _inactiveColor = const Color(0xffC7C7CC);
  final double lineWidth = 1.0.sp;

  StepProgressView(
      {Key? key,
      required List<String> titles,
      required double width,
      required Color color})
      : _titles = titles,
        _width = width,
        _activeColor = color,
        assert(width > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: _width,
        child: Column(
          children: <Widget>[
            Row(
              children: _iconViews(),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _titleViews(),
            ),
          ],
        ));
  }

  List<Widget> _iconViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, icon) {
      var circleColor = (i == 0 || controller.curStep > i + 1)
          ? _activeColor
          : _inactiveColor;
      var lineColor =
          controller.curStep > i + 1 ? _activeColor : _inactiveColor;
      var iconColor = (i == 0 || controller.curStep > i + 1)
          ? _activeColor
          : _inactiveColor;
      var bgColor = (i == 0 || controller.curStep > i + 1)
          ? ColorsUtils.WHITE
          : _inactiveColor;

      list.add(
        Container(
            width: 40.0.w,
            height: 40.0.h,
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.all(Radius.circular(22.0)),
              border: Border.all(
                color: circleColor,
                width: 2.0,
              ),
            ),
            child: iconImage[i]),
      );

      //line between icons
      if (i != _titles.length - 1) {
        list.add(Expanded(
            child: Container(
          height: lineWidth,
          color: lineColor,
        )));
      }
    });

    return list;
  }

  List<Widget> _titleViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, text) {
      var titleColor = (i == 0 || controller.curStep > i + 1)
          ? _activeColor
          : _inactiveColor;
      list.add(Text(text, style: TextStyle(color: titleColor)));
    });
    return list;
  }

  List<Widget> iconImage = [
    Image.asset(AssetsImage.order_status),
    Image.asset(AssetsImage.preparation_status),
    Image.asset(AssetsImage.onRoad_staus),
    Image.asset(AssetsImage.delivered_status),
  ];
}
