import 'package:flutter/material.dart';
import 'package:weatherapp/common_libs.dart';

Widget weatherTile({
  required BuildContext context,
  bool isCarousel = true,
  required String location,
  required String condition,
  required int isDay,
  required double tempC,
}) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: context.hPadding(0.03),
      vertical: context.hPadding(0.03),
    ),
    decoration:
        !isCarousel
            ? BoxDecoration(
              color: ColorPalette.iris,
              borderRadius: BorderRadius.circular(30),
            )
            : BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.containerbgprple.path),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
    child: Column(
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.heightBox(0.02),
                appText(
                  textAlign: TextAlign.left,
                  fontSize: 18,
                  context: context,
                  title: 'Current location',
                  textColor: ColorPalette.white,
                ),
                appText(
                  textAlign: TextAlign.left,
                  fontSize: 28,
                  context: context,
                  title: location,
                  textColor: ColorPalette.white,
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorPalette.spanishGrey.withOpacity(0.3),
                    offset: Offset(5, 5),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: switchWeatherImage(
                context: context,
                value: condition,
                isDay: isDay,
              ),
            ),
          ],
        ),

        context.heightBox(0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appText(
              context: context,
              title: condition,
              fontSize: 18,
              textColor: ColorPalette.white,
            ),
            Spacer(),
            appText(
              context: context,
              title: '$tempC°C',
              fontSize: 18,
              textColor: ColorPalette.white,
            ),
          ],
        ),
        context.heightBox(0.02),
      ],
    ),
  );
}
