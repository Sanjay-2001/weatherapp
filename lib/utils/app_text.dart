import 'package:flutter/material.dart';
import 'package:weatherapp/common_libs.dart';
import 'package:weatherapp/gen/fonts.gen.dart';

appText({
  required BuildContext context,
  TextAlign textAlign = TextAlign.center,
  int maxLine = 2,
  required String title,
  double fontSize = 20,
  FontWeight fontWeight = FontWeight.w500,
  Color textColor = ColorPalette.dark,
}) {
  return Text(
    title,
    maxLines: maxLine,
    textAlign: textAlign,
    style: TextStyle(
      fontFamily: FontFamily.ubuntu,
      fontSize: context.fontSize(fontSize),
      fontWeight: fontWeight,
      color: textColor,
    ),
  );
}
