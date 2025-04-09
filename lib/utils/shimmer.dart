import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weatherapp/common_libs.dart';

class Shimmers {
  Shimmers._sharedInstance();
  static final _shared = Shimmers._sharedInstance();
  factory Shimmers.instance() => _shared;

  shimmerView({
    required BuildContext context,
    double height = 0.01,
    double width = 0.02,
    double shape = 10,
  }) {
    return Shimmer.fromColors(
      baseColor: ColorPalette.cultured,
      highlightColor: ColorPalette.platinum,
      child: Container(
        height: context.getSize.height * height,
        width: context.getSize.width * width,
        decoration: BoxDecoration(
          color: ColorPalette.white,
          borderRadius: BorderRadius.circular(shape),
        ),
      ),
    );
  }
}
