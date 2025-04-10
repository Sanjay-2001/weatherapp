import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherapp/common_libs.dart';

switchWeatherImage({
  required BuildContext context,
  required String value,
  required int isDay,
}) {
  switch (value) {
    case 'Partly cloudy':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        isDay == 1 ? Assets.icons.cloudswithsun : Assets.icons.cloudymoon,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Cloudy':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        Assets.icons.clouds,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Sunny':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        Assets.icons.sun,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Clear':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        Assets.icons.moon,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Overcast':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        Assets.icons.clouds,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Light Snow':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        Assets.icons.snow,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Moderate rain':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.03,
        Assets.icons.rain,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
    case 'Thunder outbreaks in nearby':
      return SvgPicture.asset(
        fit: BoxFit.fill,
        width: context.getSize.width * 0.2,
        height: context.getSize.height * 0.04,
        Assets.icons.rainwiththunder,
        colorFilter: ColorFilter.srgbToLinearGamma(),
      );
  }
}
