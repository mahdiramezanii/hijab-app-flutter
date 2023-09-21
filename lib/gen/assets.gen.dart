/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/a10a.jpeg
  AssetGenImage get a10a => const AssetGenImage('assets/images/a10a.jpeg');

  /// File path: assets/images/a11a.jpeg
  AssetGenImage get a11a => const AssetGenImage('assets/images/a11a.jpeg');

  /// File path: assets/images/a1a.jpeg
  AssetGenImage get a1a => const AssetGenImage('assets/images/a1a.jpeg');

  /// File path: assets/images/a2a.jpeg
  AssetGenImage get a2a => const AssetGenImage('assets/images/a2a.jpeg');

  /// File path: assets/images/a3a.jpeg
  AssetGenImage get a3a => const AssetGenImage('assets/images/a3a.jpeg');

  /// File path: assets/images/a4a.jpeg
  AssetGenImage get a4a => const AssetGenImage('assets/images/a4a.jpeg');

  /// File path: assets/images/a5a.jpeg
  AssetGenImage get a5a => const AssetGenImage('assets/images/a5a.jpeg');

  /// File path: assets/images/a6a.jpeg
  AssetGenImage get a6a => const AssetGenImage('assets/images/a6a.jpeg');

  /// File path: assets/images/a7a.jpeg
  AssetGenImage get a7a => const AssetGenImage('assets/images/a7a.jpeg');

  /// File path: assets/images/a8a.jpeg
  AssetGenImage get a8a => const AssetGenImage('assets/images/a8a.jpeg');

  /// File path: assets/images/a9a.jpeg
  AssetGenImage get a9a => const AssetGenImage('assets/images/a9a.jpeg');

  /// File path: assets/images/flowers.png
  AssetGenImage get flowers => const AssetGenImage('assets/images/flowers.png');

  /// File path: assets/images/hijab.jpeg
  AssetGenImage get hijab => const AssetGenImage('assets/images/hijab.jpeg');

  /// File path: assets/images/homebg.jpg
  AssetGenImage get homebg => const AssetGenImage('assets/images/homebg.jpg');

  /// File path: assets/images/icon.jpg
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.jpg');

  /// File path: assets/images/main.jpg
  AssetGenImage get main => const AssetGenImage('assets/images/main.jpg');

  /// File path: assets/images/sher.jpg
  AssetGenImage get sher => const AssetGenImage('assets/images/sher.jpg');

  /// File path: assets/images/sher2.jpg
  AssetGenImage get sher2 => const AssetGenImage('assets/images/sher2.jpg');

  /// File path: assets/images/splash-image.jpg
  AssetGenImage get splashImage =>
      const AssetGenImage('assets/images/splash-image.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        a10a,
        a11a,
        a1a,
        a2a,
        a3a,
        a4a,
        a5a,
        a6a,
        a7a,
        a8a,
        a9a,
        flowers,
        hijab,
        homebg,
        icon,
        main,
        sher,
        sher2,
        splashImage
      ];
}

class $AssetsVideoGen {
  const $AssetsVideoGen();

  /// File path: assets/video/v1.mp4
  String get v1 => 'assets/video/v1.mp4';

  /// List of all assets
  List<String> get values => [v1];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsVideoGen video = $AssetsVideoGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
