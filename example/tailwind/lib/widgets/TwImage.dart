import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';

enum ImageType { ASSET, NETWORK, FILE }

class TwImage extends TwWidgetBuilder<Widget>
    with
        TwColorMixin<TwImage>,
        TwRoundnessMixin<TwImage>,
        TwSizeMixin<TwImage> {
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
  TwImage hexColor(String colorHex) =>
      this..twColor = Color(int.parse(TwUtils.hexToColor(colorHex)));

  /// Opacity
  TwImage withOpacity(double value) {
    _opacity = AlwaysStoppedAnimation(value);
    return this;
  }

  TwImage get o0 => this.._opacity = AlwaysStoppedAnimation(0.0);
  TwImage get opacity0 => this.._opacity = AlwaysStoppedAnimation(0.0);

  TwImage get o10 => this.._opacity = AlwaysStoppedAnimation(0.1);
  TwImage get opacity10 => this.._opacity = AlwaysStoppedAnimation(0.1);

  TwImage get o15 => this.._opacity = AlwaysStoppedAnimation(0.15);
  TwImage get opacity15 => this.._opacity = AlwaysStoppedAnimation(0.15);

  TwImage get o20 => this.._opacity = AlwaysStoppedAnimation(0.2);
  TwImage get opacity20 => this.._opacity = AlwaysStoppedAnimation(0.2);

  TwImage get o25 => this.._opacity = AlwaysStoppedAnimation(0.25);
  TwImage get opacity25 => this.._opacity = AlwaysStoppedAnimation(0.25);

  TwImage get o30 => this.._opacity = AlwaysStoppedAnimation(0.3);
  TwImage get opacity30 => this.._opacity = AlwaysStoppedAnimation(0.3);

  TwImage get o35 => this.._opacity = AlwaysStoppedAnimation(0.35);
  TwImage get opacity35 => this.._opacity = AlwaysStoppedAnimation(0.35);

  TwImage get o40 => this.._opacity = AlwaysStoppedAnimation(0.4);
  TwImage get opacity40 => this.._opacity = AlwaysStoppedAnimation(0.4);

  TwImage get o45 => this.._opacity = AlwaysStoppedAnimation(0.45);
  TwImage get opacity45 => this.._opacity = AlwaysStoppedAnimation(0.45);

  TwImage get o50 => this.._opacity = AlwaysStoppedAnimation(0.5);
  TwImage get opacity50 => this.._opacity = AlwaysStoppedAnimation(0.5);

  TwImage get o55 => this.._opacity = AlwaysStoppedAnimation(0.55);
  TwImage get opacity55 => this.._opacity = AlwaysStoppedAnimation(0.55);

  TwImage get o60 => this.._opacity = AlwaysStoppedAnimation(0.6);
  TwImage get opacity60 => this.._opacity = AlwaysStoppedAnimation(0.6);

  TwImage get o65 => this.._opacity = AlwaysStoppedAnimation(0.65);
  TwImage get opacity65 => this.._opacity = AlwaysStoppedAnimation(0.65);

  TwImage get o70 => this.._opacity = AlwaysStoppedAnimation(0.7);
  TwImage get opacity70 => this.._opacity = AlwaysStoppedAnimation(0.7);

  TwImage get o75 => this.._opacity = AlwaysStoppedAnimation(0.75);
  TwImage get opacity75 => this.._opacity = AlwaysStoppedAnimation(0.75);

  TwImage get o80 => this.._opacity = AlwaysStoppedAnimation(0.8);
  TwImage get opacity80 => this.._opacity = AlwaysStoppedAnimation(0.8);

  TwImage get o85 => this.._opacity = AlwaysStoppedAnimation(0.85);
  TwImage get opacity85 => this.._opacity = AlwaysStoppedAnimation(0.85);

  TwImage get o90 => this.._opacity = AlwaysStoppedAnimation(0.9);
  TwImage get opacity90 => this.._opacity = AlwaysStoppedAnimation(0.9);

  TwImage get o95 => this.._opacity = AlwaysStoppedAnimation(0.95);
  TwImage get opacity95 => this.._opacity = AlwaysStoppedAnimation(0.95);

  TwImage get o100 => this.._opacity = AlwaysStoppedAnimation(1.0);
  TwImage get opacity100 => this.._opacity = AlwaysStoppedAnimation(1.0);

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
            borderRadius: (roundness == null)
                ? BorderRadius.zero
                : (radiusGeometry ?? BorderRadius.circular(roundness!)),
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
                borderRadius: (roundness == null)
                    ? BorderRadius.zero
                    : (radiusGeometry ?? BorderRadius.circular(roundness!)),
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
                borderRadius: (roundness == null)
                    ? BorderRadius.zero
                    : (radiusGeometry ?? BorderRadius.circular(roundness!)),
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
