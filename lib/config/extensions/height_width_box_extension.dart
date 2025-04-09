import 'package:flutter/material.dart';
import 'package:weatherapp/common_libs.dart';

extension HeightWidthBoxExtension on BuildContext {
  SizedBox heightBox(double h) {
    return SizedBox(height: getSize.height * h);
  }

  SizedBox widthBox(double w) {
    return SizedBox(height: getSize.width * w);
  }
}
