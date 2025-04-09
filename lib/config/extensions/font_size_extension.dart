import 'package:flutter/material.dart';

extension FontSizeExtension on BuildContext {
  double fontSize(double size) => MediaQuery.of(this).textScaler.scale(size);
}
