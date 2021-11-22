// import 'package:flutter/material.dart';
// import 'package:tailwind/tailwind.dart';
//
// mixin TwGradientMixin<T> {
//   late T _child;
//
//   @protected
//   Gradient? twGradient;
//
//   @protected
//   void setChildToGradient(T child) {
//     _child = child;
//   }
//
//   T gradientFrom({required Color from, List<double>? stops}) =>
//       _gradientIt(child: _child, gradient: LinearGradient(colors: [from, Tw.gray100], stops: stops));
//
//   T gradientVia({required Color from, required Color via, required Color to, List<double>? stops}) =>
//       _gradientIt(child: _child, gradient: LinearGradient(colors: [from, via, to], stops: stops));
//
//   T gradientFromTo({required Color from, required Color to, List<double>? stops}) =>
//       _gradientIt(child: _child, gradient: LinearGradient(colors: [from, to], stops: stops));
//
//   T gradientTo({required Color to, List<double>? stops}) =>
//       _gradientIt(child: _child, gradient: LinearGradient(colors: [Tw.gray100, to], stops: stops));
//
//   T _gradientIt({required Gradient gradient, required T child}) {
//     twGradient = gradient;
//     return child;
//   }
// }
