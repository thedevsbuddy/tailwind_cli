// import 'package:flutter/material.dart';
// import 'package:tailwind/tailwind.dart';
// import 'TwBuilder.dart';

// class TwImage extends TwWidgetBuilder<Widget> with TwAlignmentMixin<TwImage>, TwRoundnessMixin<TwImage>, TwShadowMixin<TwImage>, TwGestureMixin<TwImage>, TwColorMixin<TwImage> {
//   TwImage(this.image) {
//     setChildForAlignment(this);
//     setChildForRoundness(this);
//     setChildForShadow(this);
//     setChildForGetureDetection(this);
//     setChildForColoring(this);
//   }

//   final String image;

//   bool _isCircleRounded = false;
//   double? _height;
//   double? _width;
//   Clip _clip = Clip.antiAlias;
//   Matrix4? _transform;
//   AlignmentGeometry _alignment = Alignment.center;
//   BlendMode? _blendMode;
//   bool _excludeFromSemantics = false;
//   FilterQuality _filterQuality = FilterQuality.low;
//   BoxFit? _fit;
//   Widget Function(BuildContext, Widget, int?, bool)? _frameBuilder;
//   ImageRepeat _repeat = ImageRepeat.noRepeat;
//   bool _gaplessPlayback = false;
//   bool _isAntiAlias = false;
//   bool _matchTextDirection = false;
//   Widget Function(BuildContext, Object, StackTrace?)? _errorBuilder;
//   Widget Function(BuildContext, Widget, ImageChunkEvent?)? _loadingBuilder;
//   Animation<double>? _opacity;
//   String? _semanticLabel;
//   Rect? _centerSlice;

//   /// Sets the height property of the box.
//   TwImage height(double val) => this.._height = val;

//   /// Sets the width property of the box.
//   TwImage width(double val) => this.._width = val;

//   /// Sets the size (width & height) property of the box.
//   TwImage size(double width, double height) => this
//     .._width = width
//     .._height = height;

//   /// Sets the height and width as square of the box.
//   TwImage square(double val) => this
//     .._width = val
//     .._height = val;

//   /// Sets the height and width as square of the box.
//   TwImage circlular(double val) {
//     this
//       .._width = val
//       .._height = val
//       .._isCircleRounded = true;

//     return this;
//   }

//   /// Sets the transform property to the animated box.
//   TwImage transform(Matrix4 val) => this.._transform = val;

//   /// Sets the clip behavior of the box.
//   TwImage clip(Clip clip) => this.._clip = clip;
//   TwImage get clipAntialias => this.._clip = Clip.antiAlias;
//   TwImage get clipAliasWithSaveLayer => this.._clip = Clip.antiAliasWithSaveLayer;
//   TwImage get clipHardEdge => this.._clip = Clip.hardEdge;

//   /// Sets the [BoxFit] of the box.
//   TwImage fit(BoxFit fit) => this.._fit = fit;
//   TwImage get cover => this.._fit = BoxFit.cover;
//   TwImage get boxCover => this.._fit = BoxFit.cover;
//   TwImage get boxContain => this.._fit = BoxFit.contain;
//   TwImage get contain => this.._fit = BoxFit.contain;

//   /// Sets the decorated box as circular.
//   TwImage get roundedFull => this.._isCircleRounded = true;
//   TwImage get isCircular => this.._isCircleRounded = true;

//   /// Handle loading widget
//   TwImage onLoading(Widget Function(BuildContext, Widget, ImageChunkEvent?)? builder) => this.._loadingBuilder = builder;
//   TwImage loadingWidget(Widget loadingWiget) {
//     _loadingBuilder = (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
//       if (loadingProgress == null) return child;
//       return loadingWiget;
//     };
//     return this;
//   }

//   TwImage onError(Widget Function(BuildContext, Object, StackTrace?)? builder) => this.._errorBuilder = builder;
//   TwImage errorWidget(Widget errorWiget) {
//     _errorBuilder = (_, __, ___) => errorWiget;
//     return this;
//   }

//   ImageProvider _getImageProvider() {
//     return this.image.contains(RegExp(r'http(s?):\/\/')) ? NetworkImage(this.image) as ImageProvider : AssetImage(this.image);
//   }

//   @override
//   Widget render({Key? key}) {
//     return ClipRRect(
//       borderRadius: _isCircleRounded
//           ? BorderRadius.circular(this._width != null ? this._width! : 10000)
//           : (roundness == null)
//               ? BorderRadius.zero
//               : (radiusGeometry != null ? BorderRadius.circular(roundness!) : BorderRadius.zero),
//       clipBehavior: _clip,
//       child: Image(
//         image: _getImageProvider(),
//         width: _width,
//         height: _height,
//         alignment: _alignment,
//         color: twColor,
//         colorBlendMode: _blendMode,
//         excludeFromSemantics: _excludeFromSemantics,
//         filterQuality: _filterQuality,
//         fit: _fit,
//         repeat: _repeat,
//         gaplessPlayback: _gaplessPlayback,
//         isAntiAlias: _isAntiAlias,
//         key: key,
//         loadingBuilder: _loadingBuilder,
//         errorBuilder: _errorBuilder,
//         frameBuilder: _frameBuilder,
//         matchTextDirection: _matchTextDirection,
//         opacity: _opacity,
//         semanticLabel: _semanticLabel,
//         centerSlice: _centerSlice,
//       ),
//     );
//   }
// }
