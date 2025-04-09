import 'package:flutter/material.dart';
import 'package:weatherapp/common_libs.dart';

typedef OnTap = Function();
textButton({
  required BuildContext context,
  required OnTap onTap,
  Color bgColor = ColorPalette.iris,
  double radius = 30,
  double hPadding = 0.04,
  double vPadding = 0.015,
  dynamic width,
  required String title,
  Color textColor = ColorPalette.white,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w400,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width ?? context.getSize.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: context.hPadding(hPadding),
        vertical: context.vPadding(vPadding),
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: appText(
        context: context,
        title: title,
        fontSize: fontSize,
        textColor: textColor,
        fontWeight: fontWeight,
      ),
    ),
  );
}
