import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';

class TwButton extends TwWidgetBuilder<Widget>
    with
        TwMarginMixin<TwButton>,
        TwPaddingMixin<TwButton>,
        TwAlignmentMixin<TwButton>,
        TwColorMixin<TwButton>,
        TwGradientMixin<TwButton>,
        TwRoundnessMixin<TwButton>,
        TwBorderMixin<TwButton>,
        TwShadowMixin<TwButton>,
        TwGestureMixin<TwButton> {
  TwButton({required this.child}) {
    setChildForAlignment(this);
    setChildForColoring(this);
    setChildForGradient(this);
    setChildForPadding(this);
    setChildForMargining(this);
    setChildForRoundness(this);
    setChildForShadow(this);
    setChildForBorder(this);
    setChildForGestureDetection(this);
  }

  final Widget child;
  Widget? _loadingWidget =
      SizedBox(height: 16, child: CircularProgressIndicator());

  bool _isCircleRounded = false;
  bool _isBusy = false;
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
  TwButton height(double val) => this.._height = val;

  /// Sets the width property of the box.
  TwButton width(double val) => this.._width = val;

  /// Sets the size (width & height) property of the box.
  TwButton size(double width, double height) => this
    .._width = width
    .._height = height;

  /// Sets the height and width as square of the box.
  TwButton square(double val) => this
    .._width = val
    .._height = val;

  /// Provide a custom DecoratedBox
  TwButton withDecoration(BoxDecoration decoration) =>
      this.._decoration = decoration;

  /// Provide a custom Foreground DecoratedBox
  TwButton withForegroundDecoration(BoxDecoration decoration) =>
      this.._foregroundDecoration = decoration;

  /// Provide a box constraint
  TwButton withConstraints(BoxConstraints constraints) =>
      this.._constraints = constraints;

  /// Sets the color property of the box.
  TwButton color(Color color) => this..twColor = color;

  /// Sets the color property of the box using the hex color value.
  TwButton hexColor(String colorHex) =>
      this..twColor = Color(int.parse(TwUtils.hexToColor(colorHex)));

  /// Sets the transform property to the animated box.
  TwButton transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip behavior of the box.
  TwButton clip(Clip clip) => this.._clip = clip;

  /// Sets the decorated box as circular.
  TwButton get roundedFull => this.._isCircleRounded = true;

  /// To give custom shadow.
  TwButton withShadow(List<BoxShadow> shadows) {
    _boxShadow = shadows;
    return this;
  }

  /// To make it busy.
  TwButton setBusy(bool isBusy) {
    _isBusy = isBusy;
    return this;
  }

  /// To show on busy state.
  TwButton addBusyWidget(Widget? busyWidget) {
    _loadingWidget = busyWidget;
    return this;
  }

  /// To give shadow with some outline color.
  TwButton shadowOutline({Color? outlineColor}) {
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
  TwButton withBorder(Border border) {
    _border = border;
    return this;
  }

  /// Sets the linear gradient to the decorated box.
  TwButton linearGradient(LinearGradient linearGradient) =>
      this.._gradient = linearGradient;

  /// Sets the radial gradient to the decorated box.
  TwButton radialGradient(RadialGradient radialGradient) =>
      this.._gradient = radialGradient;

  /// Sets the sweep gradient to the decorated box.
  TwButton sweepGradient(SweepGradient sweepGradient) =>
      this.._gradient = sweepGradient;

  /// Sets the background image to the decorated box.
  TwButton bgImage(DecorationImage image) => this.._bgImage = image;

  @override
  Widget render({Key? key}) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: twOnTap,
      onDoubleTap: twOnDoubleTap,
      onLongPress: twOnLongPress,
      onTapDown: twOnTapDown,
      onTapUp: twOnTapUp,
      onFocusChange: twOnFocusChange,
      onHighlightChanged: twOnHighlightChanged,
      onTapCancel: twOnTapCancel,
      onHover: twOnHover,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            key: key,
            duration: const Duration(milliseconds: 250),
            height: _height,
            constraints: _constraints,
            clipBehavior: _clip ?? Clip.none,
            width: _width,
            padding: twPadding,
            margin: twMargin,
            alignment: twAlignment,
            transform: _transform,
            child: _isBusy ? _loadingWidget : child,
            foregroundDecoration: _foregroundDecoration,
            decoration: _decoration ??
                BoxDecoration(
                  color: !hasGradient ? twColor : null,
                  borderRadius: _isCircleRounded || (roundness == null)
                      ? null
                      : (radiusGeometry ?? BorderRadius.circular(roundness!)),
                  shape:
                      _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
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
          ),
        ],
      ),
    );
  }
}

extension TwButtonWidgetExtension on Widget {
  /// Extension method to directly access material [TwButton] with any widget without wrapping or with dot operator.
  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isContainer] instead.')
  TwButton get button => TwButton(child: this);

  TwButton get isButton => TwButton(child: this);
}
