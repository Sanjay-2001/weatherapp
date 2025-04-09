/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Clouds.svg
  String get clouds => 'assets/icons/Clouds.svg';

  /// File path: assets/icons/Mist.svg
  String get mist => 'assets/icons/Mist.svg';

  /// File path: assets/icons/cloudswithsun.svg
  String get cloudswithsun => 'assets/icons/cloudswithsun.svg';

  /// File path: assets/icons/cloudymoon.svg
  String get cloudymoon => 'assets/icons/cloudymoon.svg';

  /// File path: assets/icons/dropdown.svg
  String get dropdown => 'assets/icons/dropdown.svg';

  /// File path: assets/icons/fog.svg
  String get fog => 'assets/icons/fog.svg';

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/moon.svg
  String get moon => 'assets/icons/moon.svg';

  /// File path: assets/icons/pressure.svg
  String get pressure => 'assets/icons/pressure.svg';

  /// File path: assets/icons/rain.svg
  String get rain => 'assets/icons/rain.svg';

  /// File path: assets/icons/rainbowcloud.svg
  String get rainbowcloud => 'assets/icons/rainbowcloud.svg';

  /// File path: assets/icons/rainwiththunder.svg
  String get rainwiththunder => 'assets/icons/rainwiththunder.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// File path: assets/icons/snow.svg
  String get snow => 'assets/icons/snow.svg';

  /// File path: assets/icons/sun.svg
  String get sun => 'assets/icons/sun.svg';

  /// File path: assets/icons/wind.svg
  String get wind => 'assets/icons/wind.svg';

  /// File path: assets/icons/world.svg
  String get world => 'assets/icons/world.svg';

  /// List of all assets
  List<String> get values => [
    clouds,
    mist,
    cloudswithsun,
    cloudymoon,
    dropdown,
    fog,
    menu,
    moon,
    pressure,
    rain,
    rainbowcloud,
    rainwiththunder,
    search,
    snow,
    sun,
    wind,
    world,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/containerbg.png
  AssetGenImage get containerbg =>
      const AssetGenImage('assets/images/containerbg.png');

  /// File path: assets/images/containerbgprple.png
  AssetGenImage get containerbgprple =>
      const AssetGenImage('assets/images/containerbgprple.png');

  /// File path: assets/images/world.png
  AssetGenImage get world => const AssetGenImage('assets/images/world.png');

  /// List of all assets
  List<AssetGenImage> get values => [containerbg, containerbgprple, world];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
