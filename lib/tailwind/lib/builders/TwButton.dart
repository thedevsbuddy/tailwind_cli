/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwButton` class
const String target = "tailwind/lib/widgets/";

/// Get the full file path for the `TwButton` Class
///
/// [file] This gives a boilerplate for the `TwButton` class
const String file = "tailwind/lib/widgets/TwButton.dart";

/// Get the stub content for the `TwButton` Class
///
/// [stub] This gives a boilerplate for the `TwButton` class
const String stub = """
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
        TwGestureMixin<TwButton>,
        TwSizeMixin<TwButton> {
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
    setChildForSizing(this);
  }

  final Widget child;
  Widget? _loadingWidget = SizedBox(height: 16, child: CircularProgressIndicator());

  bool _isBusy = false;
  BoxBorder? _border;
  Gradient? _gradient;
  Clip? _clip;
  Matrix4? _transform;
  BoxConstraints? _constraints;

  /// Provide a box constraint
  TwButton withConstraints(BoxConstraints constraints) => this.._constraints = constraints;

  /// Sets the color property of the box.
  TwButton color(Color color) => this..twColor = color;

  /// Sets the transform property to the animated box.
  TwButton transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip behavior of the box.
  TwButton clip(Clip clip) => this.._clip = clip;

  /// To make it busy.
  TwButton setBusy(bool isBusy) {
    _isBusy = isBusy;
    return this;
  }

  /// To show on busy state.
  @Deprecated('Please use [setBusyWidget] instead.')
  TwButton addBusyWidget(Widget? busyWidget) {
    _loadingWidget = busyWidget;
    return this;
  }

  TwButton setBusyWidget(Widget? busyWidget) {
    _loadingWidget = busyWidget;
    return this;
  }

  /// Sets the border of the Box.
  TwButton withBorder(Border border) {
    _border = border;
    return this;
  }

  /// Sets the linear gradient to the decorated box.
  TwButton linearGradient(LinearGradient linearGradient) => this.._gradient = linearGradient;

  /// Sets the radial gradient to the decorated box.
  TwButton radialGradient(RadialGradient radialGradient) => this.._gradient = radialGradient;

  /// Sets the sweep gradient to the decorated box.
  TwButton sweepGradient(SweepGradient sweepGradient) => this.._gradient = sweepGradient;

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
            height: twWidth,
            constraints: _constraints,
            clipBehavior: _clip ?? Clip.none,
            width: twHeight,
            padding: twPadding,
            margin: twMargin,
            alignment: twAlignment,
            transform: _transform,
            child: _isBusy ? _loadingWidget : child,
            decoration: BoxDecoration(
              color: !hasGradient ? twColor : null,
              borderRadius: (roundness == null) ? null : (radiusGeometry ?? BorderRadius.circular(roundness!)),
              boxShadow: twShadow ?? [],
              border: _border ?? getBorder(),
              gradient: hasGradient ? LinearGradient(colors: gradientColors, stops: stops, begin: begin, end: end) : _gradient,
            ),
          ),
        ],
      ),
    );
  }
}

extension TwButtonWidgetExtension on Widget {
  /// Extension method to directly access material [TwButton] with any widget without wrapping or with dot operator.
  @Deprecated('This method is deprecated and will be removed in the future please use [isContainer] instead.')
  TwButton get button => TwButton(child: this);

  TwButton get isButton => TwButton(child: this);
}

""";
