import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/common_libs.dart';
import 'package:weatherapp/screens/home/components/home_app_bar.dart';
import 'package:weatherapp/screens/home/components/weather_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          backgroundColor: ColorPalette.white,
          body: SafeArea(
            child: Column(
              children: [
                homeAppBar(
                  context: context,
                  loading: provider.loading,
                  onSearch: () {},
                  onWorld: () {},
                ),
                context.heightBox(0.02),
                SizedBox(
                  width: context.getSize.width,
                  height: context.getSize.height * 0.2,
                  child: PageView.builder(
                    controller: provider.controller,
                    itemCount: 3,
                    onPageChanged: (index) {
                      provider.changeIndex(index);
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.hPadding(0.06),
                        ),
                        child: weatherTile(
                          context: context,
                          condition: 'Cloudy',
                          tempC: 38,
                          isDay: 1,
                          location: 'Pune',
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return provider.loading
                        ? Shimmers.instance().shimmerView(
                          context: context,
                          shape: 100,
                          height: context.getSize.height * 0.015,
                          width: context.getSize.width * 0.03,
                        )
                        : Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: context.hPadding(0.01),
                          ),
                          height: context.getSize.height * 0.015,
                          width: context.getSize.width * 0.03,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                provider.selectedIndex == index
                                    ? ColorPalette.iris
                                    : ColorPalette.indicator,
                          ),
                        );
                  }),
                ),
                context.heightBox(0.02),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: context.hPadding(0.04),
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: context.vPadding(0.01),
                        ),
                        child: weatherTile(
                          context: context,
                          condition: 'Cloudy',
                          tempC: 38,
                          isDay: 1,
                          location: 'Pune',
                          isCarousel: false,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
