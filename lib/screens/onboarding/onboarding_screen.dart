import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common_libs.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.world.image(
            height: context.getSize.height * 0.4,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: context.hPadding(0.06),
                vertical: context.vPadding(0.04),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: context.hPadding(0.06),
                vertical: context.vPadding(0.02),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorPalette.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: context.hPadding(0.01),
                            ),
                            height: context.getSize.height * 0.015,
                            width: context.getSize.width * 0.03,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  index == 1
                                      ? ColorPalette.iris
                                      : ColorPalette.cultured,
                            ),
                          );
                        }),
                      ),
                      context.heightBox(0.02),
                      appText(
                        context: context,
                        title:
                            'Explore global map of wind, weather and ocean conditions',
                        maxLine: 3,
                      ),
                      context.heightBox(0.01),
                      appText(
                        context: context,
                        title:
                            'Planning your trip becomes easier with the Ideate Weather app. You can instantly see the weather around the world within seconds.',
                        maxLine: 10,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: ColorPalette.spanishGrey,
                      ),
                    ],
                  ),
                  SvgPicture.asset(Assets.icons.sun),
                  textButton(
                    context: context,
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.home);
                    },
                    title: 'NEXT',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
