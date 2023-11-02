import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';

class TwContainer extends TwWidgetBuilder<Widget>
    with
        TwMarginMixin<TwContainer>,
        TwPaddingMixin<TwContainer>,
        TwAlignmentMixin<TwContainer>,
        TwColorMixin<TwContainer>,
        TwGradientMixin<TwContainer>,
        TwRoundnessMixin<TwContainer>,
        TwBorderMixin<TwContainer>,
        TwShadowMixin<TwContainer>,
        TwSizeMixin<TwContainer> {
  TwContainer({this.child}) {
    setChildForAlignment(this);
    setChildForColoring(this);
    setChildForGradient(this);
    setChildForPadding(this);
    setChildForMargining(this);
    setChildForRoundness(this);
    setChildForShadow(this);
    setChildForBorder(this);
    setChildForSizing(this);
  }

  final Widget? child;

  bool _isCircleRounded = false;
  List<BoxShadow>? _boxShadow;
  BoxBorder? _border;
  Gradient? _gradient;
  Clip? _clip;
  Matrix4? _transform;
  DecorationImage? _bgImage;
  BoxDecoration? _decoration, _foregroundDecoration;
  BoxConstraints? _constraints;

  /// Provide a custom DecoratedBox
  TwContainer withDecoration(BoxDecoration decoration) =>
      this.._decoration = decoration;

  /// Provide a custom Foreground DecoratedBox
  TwContainer withForegroundDecoration(BoxDecoration decoration) =>
      this.._foregroundDecoration = decoration;

  /// Provide a box constraint
  TwContainer withConstraints(BoxConstraints constraints) =>
      this.._constraints = constraints;

  /// Sets the color property of the box.
  TwContainer color(Color color) => this..twColor = color;

  /// Sets the color property of the box using the hex color value.
  TwContainer hexColor(String colorHex) =>
      this..twColor = Color(int.parse(TwUtils.hexToColor(colorHex)));

  /// Sets the transform property to the animated box.
  TwContainer transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip behavior of the box.
  TwContainer clip(Clip clip) => this.._clip = clip;
  TwContainer get clipAntialias => this.._clip = Clip.antiAlias;
  TwContainer get clipAliasWithSaveLayer =>
      this.._clip = Clip.antiAliasWithSaveLayer;
  TwContainer get clipHardEdge => this.._clip = Clip.hardEdge;

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
        color: outlineColor?.withOpacity(0.5) ??
            const Color.fromRGBO(66, 153, 225, 0.5),
        blurRadius: 0.0,
        spreadRadius: 3.0,
        offset: const Offset(0.0, 0.0),
      ),
    ];

    return this;
  }

  /// Sets the border of the Box.
  TwContainer withBorder(Border border) {
    _border = border;
    return this;
  }

  /// Sets the linear gradient to the decorated box.
  TwContainer linearGradient(LinearGradient linearGradient) =>
      this.._gradient = linearGradient;

  /// Sets the radial gradient to the decorated box.
  TwContainer radialGradient(RadialGradient radialGradient) =>
      this.._gradient = radialGradient;

  /// Sets the sweep gradient to the decorated box.
  TwContainer sweepGradient(SweepGradient sweepGradient) =>
      this.._gradient = sweepGradient;

  /// Sets the background image to the decorated box.
  TwContainer bgImage(DecorationImage image) => this.._bgImage = image;

  @override
  Widget render({Key? key}) {
    return Container(
      key: key,
      height: twHeight,
      constraints: _constraints,
      clipBehavior: _clip ?? Clip.none,
      width: twWidth,
      padding: twPadding,
      margin: twMargin,
      alignment: twAlignment,
      transform: _transform,
      child: child,
      foregroundDecoration: _foregroundDecoration,
      decoration: _decoration ??
          BoxDecoration(
            color: !hasGradient ? twColor : null,
            borderRadius: _isCircleRounded || (roundness == null)
                ? null
                : (radiusGeometry ?? BorderRadius.circular(roundness!)),
            shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
            boxShadow: twShadow ?? _boxShadow ?? [],
            border: _border ?? getBorder(),
            gradient: hasGradient
                ? LinearGradient(
                    colors: gradientColors,
                    stops: stops,
                    begin: begin,
                    end: end)
                : _gradient,
            image: _bgImage,
          ),
    );
  }
}

extension ContainerWidgetExtension on Widget {
  /// Extension method to directly access material [TwContainer] with any widget without wrapping or with dot operator.
  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isContainer] instead.')
  TwContainer get container => TwContainer(child: this);

  TwContainer get isContainer => TwContainer(child: this);
}
