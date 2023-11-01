import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';

enum ImageType { ASSET, NETWORK, FILE }

class TwImage extends TwWidgetBuilder<Widget>
    with TwColorMixin<TwImage>, TwRoundnessMixin<TwImage> {
  TwImage(this.path) {
    setChildForColoring(this);
    setChildForRoundness(this);
  }

  final String path;

  ImageType _imageType = ImageType.ASSET;

  double? _height;
  double? _width;
  Animation<double>? _opacity;
  BlendMode? _colorBlendMode;
  BoxFit? _fit;
  Alignment _alignment = Alignment.center;
  ImageRepeat _repeat = ImageRepeat.noRepeat;
  FilterQuality _filterQuality = FilterQuality.low;

  /// Sets the height property of the box.
  TwImage height(double value) => this.._height = value;
  TwImage get hFull =>
      this.._height = MediaQuery.of(TwService.context).size.height;
  TwImage get hScreen =>
      this.._height = MediaQuery.of(TwService.context).size.height;
  TwImage get hHalf =>
      this.._height = MediaQuery.of(TwService.context).size.height / 2;
  TwImage get hQuarter =>
      this.._height = MediaQuery.of(TwService.context).size.height * .25;
  TwImage get h5 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .05;
  TwImage get h10 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .1;
  TwImage get h15 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .15;
  TwImage get h20 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .2;
  TwImage get h25 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .25;
  TwImage get h30 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .3;
  TwImage get h35 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .35;
  TwImage get h40 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .4;
  TwImage get h45 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .45;
  TwImage get h50 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .5;
  TwImage get h55 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .55;
  TwImage get h60 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .6;
  TwImage get h65 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .65;
  TwImage get h70 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .7;
  TwImage get h75 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .75;
  TwImage get h80 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .8;
  TwImage get h85 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .85;
  TwImage get h90 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .9;
  TwImage get h95 =>
      this.._height = MediaQuery.of(TwService.context).size.height * .95;
  TwImage get h100 =>
      this.._height = MediaQuery.of(TwService.context).size.height;

  /// Sets the width property of the box.
  TwImage width(double value) => this.._width = value;
  TwImage get wFull =>
      this.._width = MediaQuery.of(TwService.context).size.width;
  TwImage get wScreen =>
      this.._width = MediaQuery.of(TwService.context).size.width;
  TwImage get wHalf =>
      this.._width = MediaQuery.of(TwService.context).size.width / 2;
  TwImage get wQuarter =>
      this.._width = MediaQuery.of(TwService.context).size.width * .25;
  TwImage get w5 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .05;
  TwImage get w10 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .1;
  TwImage get w15 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .15;
  TwImage get w20 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .2;
  TwImage get w25 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .25;
  TwImage get w30 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .3;
  TwImage get w35 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .35;
  TwImage get w40 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .4;
  TwImage get w45 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .45;
  TwImage get w50 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .5;
  TwImage get w55 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .55;
  TwImage get w60 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .6;
  TwImage get w65 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .65;
  TwImage get w70 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .7;
  TwImage get w75 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .75;
  TwImage get w80 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .8;
  TwImage get w85 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .85;
  TwImage get w90 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .9;
  TwImage get w95 =>
      this.._width = MediaQuery.of(TwService.context).size.width * .95;
  TwImage get w100 =>
      this.._width = MediaQuery.of(TwService.context).size.width;

  /// Sets the size (width & height) property of the box.
  TwImage size(double width, double height) => this
    .._width = width
    .._height = height;

  /// Sets the height and width as square of the box.
  TwImage square(double size) => this
    .._width = size
    .._height = size;

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
              width: _width,
              height: _height,
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
                  width: _width,
                  height: _height,
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
                  width: _width,
                  height: _height,
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