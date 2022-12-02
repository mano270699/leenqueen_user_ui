import 'package:flutter/material.dart';

import '../colors.dart';
import '../image_manager.dart';

class CustomRoundImage extends StatelessWidget {
  Size? size;
  bool? border;
  Color? borderColor;
  Function()? onTap;
  double? paddingValue;
  String? image;
  CustomRoundImage(
      {Key? key,
      this.size,
      this.border = false,
      this.borderColor = ColorsUtils.WHITE,
      this.onTap,
      this.paddingValue,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: border == true ? borderColor : Colors.transparent,
            shape: BoxShape.circle),
        padding: EdgeInsets.all(paddingValue ?? 1),
        child: ClipOval(
          child: SizedBox.fromSize(
            size: size ?? const Size.fromRadius(20),
            child: Image.asset(AssetsImage.user),
          ),
        ),
      ),
    );
  }
}
