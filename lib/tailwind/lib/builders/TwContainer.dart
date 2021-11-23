const String target = "tailwind/lib/widgets/";
const String file = "tailwind/lib/widgets/TwContainer.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

class TwContainer extends TwWidgetBuilder<Widget>
    with
        TwMarginMixin<TwContainer>,
        TwPaddingMixin<TwContainer>,
        TwAlignmentMixin<TwContainer>,
        TwColorMixin<TwContainer>,
        TwGradientMixin<TwContainer>,
        TwRoundMixin<TwContainer>,
        TwShadowMixin<TwContainer> {
  TwContainer({this.child}) {
    setChildForAlignment(this);
    setChildForColoring(this);
    setChildToGradient(this);
    setChildForPadding(this);
    setChildForMargining(this);
    setChildForRoundness(this);
    setChildForShadow(this);
  }

  final Widget? child;

  bool _isCircleRounded = false;
  List<BoxShadow>? _boxShadow;
  BoxBorder? _border;
  Gradient? _gradient;
  double? _height;
  double? _width;
  Clip? _clip;
  Matrix4? _transform;
  DecorationImage? _bgImage;
  BoxDecoration? _decoration, _foregroundDecoration;
  BoxConstraints? _constraints;

  /// Sets the height property of the box.
  TwContainer height(double val) => this.._height = val;

  /// Sets the width property of the box.
  TwContainer width(double val) => this.._width = val;

  /// Sets the size (width & height) property of the box.
  TwContainer size(double width, double height) => this
    .._width = width
    .._height = height;

  /// Sets the height and width as square of the box.
  TwContainer square(double val) => this
    .._width = val
    .._height = val;

  /// Provide a custom DecoratedBox
  TwContainer withDecoration(BoxDecoration decoration) => this.._decoration = decoration;

  /// Provide a custom Foreground DecoratedBox
  TwContainer withForegroundDecoration(BoxDecoration decoration) => this.._foregroundDecoration = decoration;

  /// Provide a box constraint
  TwContainer withConstraints(BoxConstraints constraints) => this.._constraints = constraints;

  /// Sets the padding property of the box.
  TwContainer padding(EdgeInsetsGeometry val) => this..twPadding = val;

  /// Sets the margin property of the box.
  TwContainer margin(EdgeInsetsGeometry val) => this..twPadding = val;

  /// Sets the color property of the box.
  TwContainer color(Color color) => this..twColor = color;

  /// Sets the color property of the box using the hex color value.
  TwContainer hexColor(String colorHex) => this..twColor = Tw.hexToColor(colorHex);

  /// Sets the transform property to the animated box.
  TwContainer transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip behavior of the box.
  TwContainer clip(Clip clip) => this.._clip = clip;

  /// Sets the decorated box as circular.
  TwContainer get roundedFull => this.._isCircleRounded = true;

  /// To give custom shadow.
  TwContainer withShadow(List<BoxShadow> shadows) {
    _boxShadow = shadows;
    return this;
  }

  /// To give shadow with some outline color.
  TwContainer shadowOutline({Color? outlineColor}) {
    _boxShadow = [
      BoxShadow(
        color: outlineColor?.withOpacity(0.5) ?? const Color.fromRGBO(66, 153, 225, 0.5),
        blurRadius: 0.0,
        spreadRadius: 3.0,
        offset: const Offset(0.0, 0.0),
      ),
    ];

    return this;
  }

  /// Sets the border of the Box.
  TwContainer border(Border border) {
    _border = border;
    return this;
  }

  /// Sets the linear gradient to the decorated box.
  TwContainer linearGradient(LinearGradient linearGradient) => this.._gradient = linearGradient;

  /// Sets the radial gradient to the decorated box.
  TwContainer radialGradient(RadialGradient radialGradient) => this.._gradient = radialGradient;

  /// Sets the sweep gradient to the decorated box.
  TwContainer sweepGradient(SweepGradient sweepGradient) => this.._gradient = sweepGradient;

  /// Sets the background image to the decorated box.
  TwContainer bgImage(DecorationImage image) => this.._bgImage = image;

  @override
  Widget render({Key? key}) {
    return Container(
      key: key,
      height: _height,
      constraints: _constraints,
      clipBehavior: _clip ?? Clip.none,
      width: _width,
      padding: EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom),
      margin: EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      alignment: twAlignment,
      transform: _transform,
      child: child,
      foregroundDecoration: _foregroundDecoration,
      decoration: _decoration ??
          BoxDecoration(
            color: twColor,
            borderRadius: _isCircleRounded || (roundedValue == null) ? null : (radiusGeometry ?? BorderRadius.circular(roundedValue!)),
            shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
            boxShadow: twShadow ?? _boxShadow ?? [],
            border: _border,
            gradient: twGradient ?? _gradient,
            image: _bgImage,
          ),
    );
  }
}

extension ContainerWidgetExtension on Widget {
  /// Extension method to directly access material [TwContainer] with any widget without wrapping or with dot operator.
  TwContainer get twContainer => TwContainer(child: this);
}
""";
