// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// /// Flutter Text Builder Widget
// /// to provide utilities in your Text Widget
// @protected
// class TwTextBuilder extends TwWidgetBuilder<Widget> with TwColorMixin<TwTextBuilder> {
//   TwTextBuilder(String this._text) {
//     setChildToColoring(this);
//   }
//
//   TwTextBuilder.existing(String this._text, this._textStyle) {
//     setChildToColoring(this);
//   }
//
//   String? _text, _fontFamily;
//
//   double? _scaleFactor, _fontSize, _letterSpacing, _lineHeight, _wordSpacing;
//   int? _maxLines;
//   FontWeight? _fontWeight;
//   TextAlign? _textAlign;
//   FontStyle? _fontStyle;
//   TextDecoration? _decoration;
//   TextStyle? _textStyle, _themedStyle;
//   StrutStyle? _strutStyle;
//   TextOverflow? _overflow;
//   TextBaseline? _textBaseline;
//   bool? _softWrap;
//
//   /// The text to display.
//   ///
//   /// This will be null if a [textSpan] is provided instead.
//   TwTextBuilder text(String text) {
//     _text = text;
//     return this;
//   }
//
//   /// Set [color] of the text
//   TwTextBuilder color(Color color) {
//     twColor = color;
//     return this;
//   }
//
//   TwTextBuilder maxLines(int lines) {
//     _maxLines = lines;
//     return this;
//   }
//
//   /// Set [fontFamily] for the text
//   TwTextBuilder fontFamily(String family) {
//     _fontFamily = family;
//     return this;
//   }
//
//   /// Whether the text should break at soft line breaks.
//   TwTextBuilder softWrap(bool softWrap) {
//     _softWrap = softWrap;
//     return this;
//   }
//
//   /// The common baseline that should be aligned between this text span and its
//   /// parent text span, or, for the root text spans, with the line box.
//   TwTextBuilder textBaseLine(TextBaseline baseline) {
//     _textBaseline = baseline;
//     return this;
//   }
//
//   /// The amount of space (in logical pixels) to add at each sequence of
//   /// white-space (i.e. between each word). A negative value can be used to
//   /// bring the words closer.
//   TwTextBuilder wordSpacing(double spacing) {
//     _wordSpacing = spacing;
//     return this;
//   }
//
//   /// Can be used to set overflow of a text.
//   /// How visual overflow should be handled.
//   TwTextBuilder overflow(TextOverflow overflow) {
//     _overflow = overflow;
//     return this;
//   }
//
//   /// Set [FontWeight] for the text
//   TwTextBuilder fontWeight(FontWeight weight) {
//     _fontWeight = weight;
//     return this;
//   }
//
//   /// Use textStyle to provide custom or any theme style.
//   ///
//   /// If the style's 'inherit' property is true, the style will be merged with
//   /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
//   /// replace the closest enclosing [DefaultTextStyle].
//   TwTextBuilder textStyle(TextStyle _style) {
//     _themedStyle = _style;
//     return this;
//   }
//
//   /// The strut style to use. Strut style defines the strut, which sets minimum
//   /// vertical layout metrics.
//   ///
//   /// Omitting or providing null will disable strut.
//   ///
//   /// Omitting or providing null for any properties of [StrutStyle] will result in
//   /// default values being used. It is highly recommended to at least specify a
//   /// font size.
//   ///
//   /// See [StrutStyle] for details.
//   TwTextBuilder strutStyle(StrutStyle _style) {
//     _strutStyle = _style;
//     return this;
//   }
//
//   // Give custom text alignment
//   TwTextBuilder align(TextAlign align) => this.._textAlign = align;
//
//   /// How the text should be aligned horizontally.
//   ///
//   /// To align text in [center]
//   TwTextBuilder get center => this.._textAlign = TextAlign.center;
//
//   /// To align text in [start]
//   TwTextBuilder get start => this.._textAlign = TextAlign.start;
//
//   /// To align text in [end]
//   TwTextBuilder get end => this.._textAlign = TextAlign.end;
//
//   /// To align text as [justify]
//   TwTextBuilder get justify => this.._textAlign = TextAlign.justify;
//
//   /// To overlow text as [fade]
//   TwTextBuilder get fade => this.._overflow = TextOverflow.fade;
//
//   /// To overlow text as [ellipsis]
//   TwTextBuilder get ellipsis => this.._overflow = TextOverflow.ellipsis;
//
//   /// To overlow text as [visible]
//   TwTextBuilder get visible => this.._overflow = TextOverflow.visible;
//
//   /// To set fontSize of the text using [size]
//   TwTextBuilder size(double? size) => this.._fontSize = size;
//
//   /// Sets [TextTheme] headline 1
//   TwTextBuilder headline1(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.headline1;
//     return this;
//   }
//
//   /// Sets [TextTheme] headline 2
//   TwTextBuilder headline2(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.headline2;
//     return this;
//   }
//
//   /// Sets [TextTheme] headline 3
//   TwTextBuilder headline3(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.headline3;
//     return this;
//   }
//
//   /// Sets [TextTheme] headline 4
//   TwTextBuilder headline4(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.headline4;
//     return this;
//   }
//
//   /// Sets [TextTheme] headline 5
//   TwTextBuilder headline5(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.headline5;
//     return this;
//   }
//
//   /// Sets [TextTheme] headline 6
//   TwTextBuilder headline6(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.headline6;
//     return this;
//   }
//
//   /// Sets [TextTheme] bodyText1
//   TwTextBuilder bodyText1(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.bodyText1;
//     return this;
//   }
//
//   /// Sets [TextTheme] bodyText2
//   TwTextBuilder bodyText2(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.bodyText2;
//     return this;
//   }
//
//   /// Sets [TextTheme] caption
//   TwTextBuilder caption(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.caption;
//     return this;
//   }
//
//   /// Sets [TextTheme] subtitle1
//   TwTextBuilder subtitle1(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.subtitle1;
//     return this;
//   }
//
//   /// Sets [TextTheme] subtitle2
//   TwTextBuilder subtitle2(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.subtitle2;
//     return this;
//   }
//
//   /// Sets [TextTheme] overline
//   TwTextBuilder overlineText(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.overline;
//     return this;
//   }
//
//   /// Sets [TextTheme] button
//   TwTextBuilder buttonText(BuildContext context) {
//     _themedStyle = Theme.of(context).textTheme.button;
//     return this;
//   }
//
//   /// Sets [textScaleFactor] to extra small i.e. 0.75
//   /// TODO: Add font size replacement
//   /// TwTextBuilder get xs => _fontSizedText(child: this, scaleFactor: 0.75);
//
//   /// Sets [textScaleFactor] to custom value
//   TwTextBuilder scale(double value) => _fontSizedText(child: this, scaleFactor: value);
//
//   TwTextBuilder _fontSizedText({required double scaleFactor, required TwTextBuilder child}) {
//     _fontSize = _fontSize ?? 14.0;
//     _scaleFactor = scaleFactor;
//     return this;
//   }
//
//   /// Sets [FontWeight] to [FontWeight.w100]
//   TwTextBuilder get hairLine => _fontWeightedText(child: this, weight: FontWeight.w100);
//
//   /// Sets [FontWeight] to [FontWeight.w200]
//   TwTextBuilder get thin => _fontWeightedText(child: this, weight: FontWeight.w200);
//
//   /// Sets [FontWeight] to [FontWeight.w300]
//   TwTextBuilder get light => _fontWeightedText(child: this, weight: FontWeight.w300);
//
//   /// Sets [FontWeight] to [FontWeight.w400]
//   TwTextBuilder get normal => _fontWeightedText(child: this, weight: FontWeight.w400);
//
//   /// Sets [FontWeight] to [FontWeight.w500]
//   TwTextBuilder get medium => _fontWeightedText(child: this, weight: FontWeight.w500);
//
//   /// Sets [FontWeight] to [FontWeight.w600]
//   TwTextBuilder get semiBold => _fontWeightedText(child: this, weight: FontWeight.w600);
//
//   /// Sets [FontWeight] to [FontWeight.w700]
//   TwTextBuilder get bold => _fontWeightedText(child: this, weight: FontWeight.w700);
//
//   /// Sets [FontWeight] to [FontWeight.w800]
//   TwTextBuilder get extraBold => _fontWeightedText(child: this, weight: FontWeight.w800);
//
//   /// Sets [FontWeight] to [FontWeight.w900]
//   TwTextBuilder get extraBlack => _fontWeightedText(child: this, weight: FontWeight.w900);
//
//   TwTextBuilder _fontWeightedText({required FontWeight weight, required TwTextBuilder child}) {
//     _fontWeight = weight;
//     return this;
//   }
//
//   /// Sets [FontStyle] to [FontStyle.italic]
//   TwTextBuilder get italic => this.._fontStyle = FontStyle.italic;
//
//   /// Sets [letterSpacing] to -3.0
//   TwTextBuilder get tightest => this.._letterSpacing = -3.0;
//
//   /// Sets [letterSpacing] to -2.0
//   TwTextBuilder get tighter => this.._letterSpacing = -2.0;
//
//   /// Sets [letterSpacing] to -1.0
//   TwTextBuilder get tight => this.._letterSpacing = -1.0;
//
//   /// Sets [letterSpacing] to 1.0
//   TwTextBuilder get wide => this.._letterSpacing = 1.0;
//
//   /// Sets [letterSpacing] to 2.0
//   TwTextBuilder get wider => this.._letterSpacing = 2.0;
//
//   /// Sets [letterSpacing] to 3.0
//   TwTextBuilder get widest => this.._letterSpacing = 3.0;
//
//   /// Sets custom [letterSpacing] with [val]
//   TwTextBuilder letterSpacing(double val) => this.._letterSpacing = val;
//
//   /// Sets [TextDecoration] as [TextDecoration.underline]
//   TwTextBuilder get underline => this.._decoration = TextDecoration.underline;
//
//   /// Sets [TextDecoration] as [TextDecoration.lineThrough]
//   TwTextBuilder get lineThrough => this.._decoration = TextDecoration.lineThrough;
//
//   /// Sets [TextDecoration] as [TextDecoration.overline]
//   TwTextBuilder get overline => this.._decoration = TextDecoration.overline;
//
//   /// Converts the text to fully uppercase.
//   TwTextBuilder get uppercase => this.._text = _text!.toUpperCase();
//
//   /// Converts the text to fully lowercase.
//   TwTextBuilder get lowercase => this.._text = _text!.toLowerCase();
//
//   /// Converts the text to first letter of very word as uppercase.
//   TwTextBuilder get capitalize => this.._text = Tw.ucWords(_text);
//
//   /// Sets [lineHeight] to 0.75
//   TwTextBuilder get leadingTight => this.._lineHeight = 0.75;
//
//   /// Sets [lineHeight] to 0.875
//   TwTextBuilder get leadingSnug => this.._lineHeight = 0.875;
//
//   /// Sets [lineHeight] to 1.25
//   TwTextBuilder get leadingRelaxed => this.._lineHeight = 1.25;
//
//   /// Sets [lineHeight] to 1.5
//   TwTextBuilder get leadingLoose => this.._lineHeight = 1.5;
//
//   /// Sets custom [lineHeight] with [val]
//   TwTextBuilder lineHeight(double val) => this.._lineHeight = val;
//
//   @override
//   Widget render({Key? key}) {
//     final ts = TextStyle(
//       color: twColor,
//       fontSize: _fontSize,
//       fontStyle: _fontStyle,
//       fontFamily: _fontFamily,
//       fontWeight: _fontWeight,
//       letterSpacing: _letterSpacing,
//       decoration: _decoration,
//       height: _lineHeight,
//       textBaseline: _textBaseline ?? TextBaseline.alphabetic,
//       wordSpacing: _wordSpacing,
//     );
//
//     return Text(
//       _text!,
//       key: key,
//       textAlign: _textAlign,
//       maxLines: _maxLines,
//       textScaleFactor: _scaleFactor,
//       style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts,
//       softWrap: _softWrap ?? true,
//       overflow: _overflow ?? TextOverflow.clip,
//       strutStyle: _strutStyle,
//     );
//   }
// }
//
// extension TextExtensions on Text {
//   /// Extension method to directly access [TwTextBuilder]
//   /// with any widget without wrapping or with dot operator.
//
//   TwTextBuilder get twText => TwTextBuilder.existing(data!, style);
// }
