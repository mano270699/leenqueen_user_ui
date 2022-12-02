import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import '../colors.dart';

import 'custom_text.dart';

class TooltipShape extends ShapeBorder {
  TooltipShape();

  final BorderSide _side = BorderSide.none;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(_side.width);

  @override
  Path getInnerPath(
    Rect rect, {
    TextDirection? textDirection,
  }) {
    final Path path = Path();

    path.addRRect(
      _borderRadius.resolve(textDirection).toRRect(rect).deflate(_side.width),
    );

    return path;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path();
    final RRect rrect = _borderRadius.resolve(textDirection).toRRect(rect);

    path.moveTo(0, 10);
    path.quadraticBezierTo(0, 0, 10, 0);
    path.lineTo(rrect.width - 30, 0);
    path.lineTo(rrect.width - 20, -10);
    path.lineTo(rrect.width - 10, 0);
    path.quadraticBezierTo(rrect.width, 0, rrect.width, 10);
    path.lineTo(rrect.width, rrect.height - 10);
    path.quadraticBezierTo(
        rrect.width, rrect.height, rrect.width - 10, rrect.height);
    path.lineTo(10, rrect.height);
    path.quadraticBezierTo(0, rrect.height, 0, rrect.height - 10);

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => RoundedRectangleBorder(
        side: _side.scale(t),
        borderRadius: _borderRadius * t,
      );
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

class CustomDialog {
  static Widget dialogItem({
    required void Function() onTap,
    required String asset,
    required String title,
    String? subTitle,
    bool? body = false,
    bool divider = true,
    double? width,
    Color? dividerColor,
  }) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      InkWell(
        onTap: onTap,
        child: Row(
          children: [
            const SizedBox(width: 18),
            SizedBox(height: 25, width: 25, child: Image.asset(asset)),
            SizedBox(width: body == false ? 5 : 10),
            body == false
                ? CustomText(
                    text: title,
                    fontSize: 16.sp,
                    fontColor:
                        divider ? ColorsUtils.BLACK : ColorsUtils.RED_COLOR,
                    customFontWeight: FontWeight.w400,
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title,
                        fontSize: 16.sp,
                        fontColor: ColorsUtils.BLACK,
                        customFontWeight: FontWeight.w400,
                      ),
                      CustomText(
                        text: subTitle ?? '',
                        fontSize: 14.sp,
                        fontColor: ColorsUtils.HINT_COLOR,
                        customFontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
            SizedBox(width: width ?? 0),
          ],
        ),
      ),
      if (divider == true) ...[
        Divider(
          color: dividerColor ?? ColorsUtils.holdColor,
          thickness: 0.7,
          height: body == false ? 20 : 0,
        )
      ],
    ]);
  }

  static Future<void> showMore(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierColor: ColorsUtils.BLACK.withOpacity(0.7),
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SimpleDialog(
              elevation: 0,
              insetPadding: EdgeInsets.only(bottom: 450.h, left: 70.w),
              titlePadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.only(right: 15.w),
              backgroundColor: ColorsUtils.BLACK.withOpacity(0.7),
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipPath(
                              clipper: TriangleClipper(),
                              child: Container(
                                height: 15,
                                width: 23,
                                color: ColorsUtils.WHITE,
                              )),
                          SizedBox(width: 15.w),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        decoration: BoxDecoration(
                            color: ColorsUtils.WHITE,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            dialogItem(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const ChatMediaGroupView()),
                                  // );
                                },
                                asset: AssetsImage.gallery,
                                title: 'Group Media'),
                            dialogItem(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           ChatCreateEventView()),
                                  // );
                                },
                                asset: AssetsImage.calendar_tick,
                                title: 'Create Event'),
                            dialogItem(
                                onTap: () {},
                                asset: AssetsImage.logout,
                                title: 'Leave',
                                divider: false),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]);
        });
  }
}
