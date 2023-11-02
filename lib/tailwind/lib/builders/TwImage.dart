/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwImage` class
const String target = "tailwind/lib/widgets/";

/// Get the full file path for the `TwImage` Class
///
/// [file] This gives a boilerplate for the `TwImage` class
const String file = "tailwind/lib/widgets/TwImage.dart";

/// Get the stub content for the `TwImage` Class
///
/// [stub] This gives a boilerplate for the `TwImage` class
const String stub = """
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';

enum ImageType { ASSET, NETWORK, FILE }

class TwImage extends TwWidgetBuilder<Widget> with TwColorMixin<TwImage>, TwRoundnessMixin<TwImage>, TwSizeMixin<TwImage> {
  TwImage(this.path) {
    setChildForColoring(this);
    setChildForRoundness(this);
    setChildForSizing(this);
  }

  final String path;

  ImageType _imageType = ImageType.ASSET;

  Animation<double>? _opacity;
  BlendMode? _colorBlendMode;
  BoxFit? _fit;
  Alignment _alignment = Alignment.center;
  ImageRepeat _repeat = ImageRepeat.noRepeat;
  FilterQuality _filterQuality = FilterQuality.low;

  /// Sets the color property of the box.
  TwImage color(Color color) => this..twColor = color;

  /// Sets the color property of the box using the hex color value.
  TwImage hexColor(String colorHex) => this..twColor = Color(int.parse(TwUtils.hexToColor(colorHex)));

  /// Opacity
  TwImage withOpacity(double value) {
    _opacity = AlwaysStoppedAnimation(value);
    return this;
  }

  %opacity%

  /// BoxFit
  TwImage get cover => this.._fit = BoxFit.cover;
  TwImage get fitCover => this.._fit = BoxFit.cover;
  TwImage get contain => this.._fit = BoxFit.contain;
  TwImage get fitContain => this.._fit = BoxFit.contain;
  TwImage get fill => this.._fit = BoxFit.fill;
  TwImage get fitFill => this.._fit = BoxFit.fill;
  TwImage get fitHeight => this.._fit = BoxFit.fitHeight;
  TwImage get fitWidth => this.._fit = BoxFit.fitWidth;

  @override
  Widget render({Key? key}) {
    // File Object
    File? _filePath;

    if (path.contains('https://') || path.contains('http://')) {
      _imageType = ImageType.NETWORK;
    } else if (path.contains('file://')) {
      _imageType = ImageType.FILE;
      _filePath = File(path);
    } else {
      _imageType = ImageType.ASSET;
    }

    return _imageType == ImageType.ASSET
        ? ClipRRect(
            borderRadius: (roundness == null) ? BorderRadius.zero : (radiusGeometry ?? BorderRadius.circular(roundness!)),
            child: Image.asset(
              path,
              key: key,
              color: twColor,
              width: twWidth,
              height: twHeight,
              opacity: _opacity,
              colorBlendMode: _colorBlendMode,
              fit: _fit,
              alignment: _alignment,
              repeat: _repeat,
              filterQuality: _filterQuality,
            ),
          )
        : (_imageType == ImageType.FILE)
            ? ClipRRect(
            borderRadius: (roundness == null) ? BorderRadius.zero : (radiusGeometry ?? BorderRadius.circular(roundness!)),
                child: Image.file(
                  _filePath!,
                  key: key,
                  color: twColor,
                  width: twWidth,
                  height: twHeight,
                  opacity: _opacity,
                  colorBlendMode: _colorBlendMode,
                  fit: _fit,
                  alignment: _alignment,
                  repeat: _repeat,
                  filterQuality: _filterQuality,
                ),
              )
            : ClipRRect(
            borderRadius: (roundness == null) ? BorderRadius.zero : (radiusGeometry ?? BorderRadius.circular(roundness!)),
                child: Image.network(
                  path,
                  key: key,
                  color: twColor,
                  width: twWidth,
                  height: twHeight,
                  opacity: _opacity,
                  colorBlendMode: _colorBlendMode,
                  fit: _fit,
                  alignment: _alignment,
                  repeat: _repeat,
                  filterQuality: _filterQuality,
                ),
              );
  }
}

""";
