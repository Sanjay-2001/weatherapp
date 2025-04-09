import 'package:flutter/material.dart';
import 'package:weatherapp/common_libs.dart';

extension PaddingExtension on BuildContext {
  double vPadding(double h) {
    return getSize.height * h;
  }

  double hPadding(double w) {
    return getSize.width * w;
  }
}
