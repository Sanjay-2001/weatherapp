import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weatherapp/common_libs.dart';

typedef OnTap = Function();
Padding homeAppBar({
  required BuildContext context,
  required bool loading,
  required OnTap onSearch,
  required OnTap onWorld,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: context.hPadding(0.05)),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (loading)
              Shimmers.instance().shimmerView(
                context: context,
                height: 0.02,
                width: 0.2,
              )
            else
              appText(
                context: context,
                title: 'Hello',
                textAlign: TextAlign.start,
              ),
            context.heightBox(0.01),
            if (loading)
              Shimmers.instance().shimmerView(
                context: context,
                height: 0.02,
                width: 0.5,
              )
            else
              appText(
                context: context,
                title: 'Discover the weather',
                textAlign: TextAlign.start,
              ),
          ],
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (loading)
              Shimmers.instance().shimmerView(
                context: context,
                shape: 100,
                height: 0.06,
                width: 0.13,
              )
            else
              GestureDetector(
                onTap: onSearch,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: context.hPadding(0.02),
                    vertical: context.vPadding(0.02),
                  ),
                  decoration: BoxDecoration(
                    color: ColorPalette.titanWhite,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(Assets.icons.search),
                ),
              ),
            context.widthBox(0.02),
            if (loading)
              Shimmers.instance().shimmerView(
                context: context,
                shape: 100,
                height: 0.06,
                width: 0.13,
              )
            else
              GestureDetector(
                onTap: onWorld,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: context.hPadding(0.02),
                    vertical: context.vPadding(0.02),
                  ),
                  decoration: BoxDecoration(
                    color: ColorPalette.titanWhite,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(Assets.icons.world),
                ),
              ),
          ],
        ),
      ],
    ),
  );
}
