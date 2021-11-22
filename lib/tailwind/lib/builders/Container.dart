// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// import '../../flutter_tailwind.dart';
// import 'Builder.dart';
//
// /// A convenience widget that combines common painting, positioning, and sizing
// /// widgets.
// ///
// /// {@youtube 560 315 https://www.youtube.com/watch?v=c1xLMaTUWCY}
// ///
// /// A container/TwContainer first surrounds the child with [padding] (inflated by any
// /// borders present in the [decoration]) and then applies additional
// /// [constraints] to the padded extent (incorporating the `width` and `height`
// /// as constraints, if either is non-null). The container is then surrounded by
// /// additional empty space described from the [margin].
// ///
// /// During painting, the container first applies the given [transform], then
// /// paints the [decoration] to fill the padded extent, then it paints the child,
// /// and finally paints the [foregroundDecoration], also filling the padded
// /// extent.
// ///
// /// Containers with no children try to be as big as possible unless the incoming
// /// constraints are unbounded, in which case they try to be as small as
// /// possible. Containers with children size themselves to their children. The
// /// `width`, `height`, and [constraints] arguments to the constructor override
// /// this.
// ///
// /// By default, boxes/containers return false for all hit tests. If the [color]
// /// property is specified, the hit testing is handled by [ColoredBox], which
// /// always returns true. If the [decoration] or [foregroundDecoration] properties
// /// are specified, hit testing is handled by [Decoration.hitTest].
// ///
//
// class TwContainer extends TwWidgetBuilder<Widget>
//     with
//         TwMarginMixin<TwContainer>,
//         TwPaddingMixin<TwContainer>,
//         TwAlignmentMixin<TwContainer>,
//         TwColorMixin<TwContainer>,
//         TwGradientMixin<TwContainer>,
//         TwRoundMixin<TwContainer>,
//         TwShadowMixin<TwContainer> {
//   TwContainer({this.child}) {
//     setChildForAlignment(this);
//     setChildToColor(this);
//     setChildToGradient(this);
//     setChildToPad(this);
//     setChildToMargin(this);
//     setChildToRound(this);
//     setChildForShadow(this);
//   }
//
//   final Widget? child;
//
//   bool _isCircleRounded = false;
//   List<BoxShadow>? _boxShadow;
//   BoxBorder? _border;
//   Gradient? _gradient;
//   double? _height;
//   double? _width;
//   Clip? _clip;
//
//   Matrix4? _transform;
//
//   DecorationImage? _bgImage;
//
//   BoxDecoration? _decoration, _foregroundDecoration;
//   BoxConstraints? _constraints;
//
//   ///
//   /// Sets the height property of the box.
//   ///
//   TwContainer height(double val) => this.._height = val;
//
//   ///
//   /// Sets the width property of the box.
//   ///
//   TwContainer width(double val) => this.._width = val;
//
//   ///
//   /// Sets the size (width & height) property of the box.
//   ///
//   TwContainer size(double width, double height) => this
//     .._width = width
//     .._height = height;
//
//   ///
//   /// Sets the height and width as square of the box.
//   ///
//   TwContainer square(double val) => this
//     .._width = val
//     .._height = val;
//
//   ///
//   /// Provide a custom DecoratedBox
//   ///
//   TwContainer withDecoration(BoxDecoration decoration) => this.._decoration = decoration;
//
//   ///
//   /// Provide a custom Foreground DecoratedBox
//   ///
//   TwContainer withForegroundDecoration(BoxDecoration decoration) => this.._foregroundDecoration = decoration;
//
//   ///
//   /// Provide a box constraint
//   ///
//   TwContainer withConstraints(BoxConstraints constraints) => this.._constraints = constraints;
//
//   ///
//   /// Sets the padding property of the box.
//   ///
//   TwContainer padding(EdgeInsetsGeometry val) => this..twPadding = val;
//
//   ///
//   /// Sets the margin property of the box.
//   ///
//   TwContainer margin(EdgeInsetsGeometry val) => this..twPadding = val;
//
//   ///
//   /// Sets the color property of the box.
//   ///
//   TwContainer color(Color color) => this..twColor = color;
//
//   ///
//   /// Sets the color property of the box using the hex color value.
//   ///
//   TwContainer hexColor(String colorHex) => this..twColor = Tw.hexToColor(colorHex);
//
//   /// transforming
//   ///
//   /// Sets the transform property to the animated box.
//   ///
//   TwContainer transform(Matrix4 val) => this.._transform = val;
//
//   ///
//   /// Sets the clip behavior of the box.
//   ///
//   TwContainer clip(Clip clip) => this.._clip = clip;
//
//   ///
//   /// Sets the decorated box as circular.
//   ///
//   TwContainer get roundedFull => this.._isCircleRounded = true;
//
//   /// Provide custom list of box shadows
//   ///
//   /// To give custom shadow.
//   ///
//   TwContainer withShadow(List<BoxShadow> shadows) {
//     _boxShadow = shadows;
//     return this;
//   }
//
//   ///
//   /// To give shadow with some outline color.
//   ///
//   TwContainer shadowOutline({Color? outlineColor}) {
//     _boxShadow = [
//       BoxShadow(
//         color: outlineColor?.withOpacity(0.5) ?? const Color.fromRGBO(66, 153, 225, 0.5),
//         blurRadius: 0.0,
//         spreadRadius: 3.0,
//         offset: const Offset(0.0, 0.0),
//       ),
//     ];
//
//     return this;
//   }
//
//   /// Bordering
//   /// Sets the border of the Box.
//   ///
//   TwContainer border({Color color = Colors.black, double width = 1.0, BorderStyle style = BorderStyle.solid}) {
//     _border = Border.all(color: color, width: width, style: style);
//     return this;
//   }
//
//   /// Gradienting
//   /// Sets the linear gradient to the decorated box.
//   ///
//   TwContainer linearGradient(List<Color> colors,
//           {AlignmentGeometry begin = Alignment.centerLeft,
//           AlignmentGeometry end = Alignment.centerRight,
//           List<double>? stops,
//           TileMode tileMode = TileMode.clamp,
//           GradientTransform? transform}) =>
//       this.._gradient = LinearGradient(colors: colors, begin: begin, stops: stops, end: end, tileMode: tileMode, transform: transform);
//
//   ///
//   /// Sets the radial gradient to the decorated box.
//   ///
//   TwContainer radialGradient(List<Color> colors,
//           {AlignmentGeometry center = Alignment.center,
//           double radius = 0.5,
//           List<double>? stops,
//           TileMode tileMode = TileMode.clamp,
//           AlignmentGeometry? focal,
//           double focalRadius = 0.0,
//           GradientTransform? transform}) =>
//       this
//         .._gradient = RadialGradient(
//             colors: colors,
//             center: center,
//             radius: radius,
//             focalRadius: focalRadius,
//             stops: stops,
//             focal: focal,
//             tileMode: tileMode,
//             transform: transform);
//
//   ///
//   /// Sets the sweep gradient to the decorated box.
//   ///
//   TwContainer sweepGradient(List<Color> colors,
//           {AlignmentGeometry center = Alignment.center,
//           double startAngle = 0.0,
//           double endAngle = pi * 2,
//           List<double>? stops,
//           TileMode tileMode = TileMode.clamp,
//           GradientTransform? transform}) =>
//       this
//         .._gradient = SweepGradient(
//             colors: colors, center: center, endAngle: endAngle, startAngle: startAngle, stops: stops, tileMode: tileMode, transform: transform);
//
//   ///
//   /// Sets the defined gradient to the decorated box.
//   ///
//   TwContainer withGradient(Gradient gradient) => this.._gradient = gradient;
//
// // DecorationImage BoxDecoration
//   ///
//   /// Sets the background image to the decorated box.
//   ///
//   TwContainer bgImage(DecorationImage image) => this.._bgImage = image;
//
//   @override
//   Widget make({Key? key}) {
//     return Container(
//       key: key,
//       height: _height,
//       constraints: _constraints,
//       clipBehavior: _clip ?? Clip.none,
//       width: _width,
//       padding: EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom),
//       margin: EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
//       alignment: twAlignment,
//       transform: _transform,
//       child: child,
//       foregroundDecoration: _foregroundDecoration,
//       decoration: _decoration ??
//           BoxDecoration(
//             color: twColor,
//             borderRadius: _isCircleRounded || (roundedValue == null) ? null : (radiusGeometry ?? BorderRadius.circular(roundedValue!)),
//             shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
//             boxShadow: twShadow ?? _boxShadow ?? [],
//             border: _border,
//             gradient: twGradient ?? _gradient,
//             image: _bgImage,
//           ),
//     );
//   }
// }
//
// extension ContainerWidgetExtension on Widget {
//   ///
//   /// Extension method to directly access material [TwContainer] with any widget without wrapping or with dot operator.
//   ///
//   TwContainer get twContainer => TwContainer(child: this);
// }
