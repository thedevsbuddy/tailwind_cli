const String target = "tailwind/lib/builders/";
const String file = "tailwind/lib/builders/TwTextBuilder.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';
import '../mixins/ColorMixin.dart';

/// Flutter Text Builder Widget
/// to provide utilities in your Text Widget
@protected
class TwTextBuilder extends TwWidgetBuilder<Widget> with TwColorMixin<TwTextBuilder> {
  TwTextBuilder(String this._text) {
    setChildForColoring(this);
  }

  TwTextBuilder.existing(String this._text, this._textStyle) {
    setChildForColoring(this);
  }

  String? _text, _fontFamily;

  double? _scaleFactor, _fontSize, _letterSpacing, _lineHeight, _wordSpacing;
  int? _maxLines;
  FontWeight? _fontWeight;
  TextAlign? _textAlign;
  FontStyle? _fontStyle;
  TextDecoration? _decoration;
  TextStyle? _textStyle, _themedStyle;
  StrutStyle? _strutStyle;
  TextOverflow? _overflow;
  TextBaseline? _textBaseline;
  bool? _softWrap;

  /// The text to display.
  ///
  /// This will be null if a [textSpan] is provided instead.
  TwTextBuilder text(String text) {
    _text = text;
    return this;
  }

  /// Set [color] of the text
  TwTextBuilder color(Color color) {
    twColor = color;
    return this;
  }

  TwTextBuilder maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  /// Set [fontFamily] for the text
  TwTextBuilder fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Whether the text should break at soft line breaks.
  TwTextBuilder softWrap(bool softWrap) {
    _softWrap = softWrap;
    return this;
  }

  /// The common baseline that should be aligned between this text span and its
  /// parent text span, or, for the root text spans, with the line box.
  TwTextBuilder textBaseLine(TextBaseline baseline) {
    _textBaseline = baseline;
    return this;
  }

  /// Bring the words closer.
  TwTextBuilder wordSpacing(double spacing) {
    _wordSpacing = spacing;
    return this;
  }

  /// Can be used to set overflow of a text.
  /// How visual overflow should be handled.
  TwTextBuilder overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  /// Set [FontWeight] for the text
  TwTextBuilder fontWeight(FontWeight weight) {
    _fontWeight = weight;
    return this;
  }

  /// Replace the closest enclosing [DefaultTextStyle].
  TwTextBuilder textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  /// See [StrutStyle] for details.
  TwTextBuilder strutStyle(StrutStyle _style) {
    _strutStyle = _style;
    return this;
  }

  /// ============== TEXT ALIGNMENT ============== ///
  TwTextBuilder align(TextAlign align) => this.._textAlign = align;

  /// To align text in [center]
  TwTextBuilder get center => this.._textAlign = TextAlign.center;

  /// To align text in [start]
  TwTextBuilder get start => this.._textAlign = TextAlign.start;

  /// To align text in [end]
  TwTextBuilder get end => this.._textAlign = TextAlign.end;

  /// To align text as [justify]
  TwTextBuilder get justify => this.._textAlign = TextAlign.justify;

  /// To overlow text as [fade]
  TwTextBuilder get fade => this.._overflow = TextOverflow.fade;

  /// To overlow text as [ellipsis]
  TwTextBuilder get ellipsis => this.._overflow = TextOverflow.ellipsis;

  /// To overlow text as [visible]
  TwTextBuilder get visible => this.._overflow = TextOverflow.visible;

  /// ============== FONT THEME ============== ///
  /// Sets [TextTheme] headline 1
  TwTextBuilder headline1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline1;
    return this;
  }

  /// Sets [TextTheme] headline 2
  TwTextBuilder headline2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline2;
    return this;
  }

  /// Sets [TextTheme] headline 3
  TwTextBuilder headline3(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline3;
    return this;
  }

  /// Sets [TextTheme] headline 4
  TwTextBuilder headline4(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline4;
    return this;
  }

  /// Sets [TextTheme] headline 5
  TwTextBuilder headline5(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline5;
    return this;
  }

  /// Sets [TextTheme] headline 6
  TwTextBuilder headline6(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline6;
    return this;
  }

  /// Sets [TextTheme] bodyText1
  TwTextBuilder bodyText1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyText1;
    return this;
  }

  /// Sets [TextTheme] bodyText2
  TwTextBuilder bodyText2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyText2;
    return this;
  }

  /// Sets [TextTheme] caption
  TwTextBuilder caption(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.caption;
    return this;
  }

  /// Sets [TextTheme] subtitle1
  TwTextBuilder subtitle1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.subtitle1;
    return this;
  }

  /// Sets [TextTheme] subtitle2
  TwTextBuilder subtitle2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.subtitle2;
    return this;
  }

  /// Sets [TextTheme] overline
  TwTextBuilder overlineText(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.overline;
    return this;
  }

  /// Sets [TextTheme] button
  TwTextBuilder buttonText(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.button;
    return this;
  }

  /// ============== FONT SIZES ============== ///
  //fontSizes

  /// To set fontSize of the text using [size]
  TwTextBuilder size(double? size) => this.._fontSize = size;

  /// Sets [textScaleFactor] to custom value
  TwTextBuilder scale(double value) => _fontSizedText(child: this, scaleFactor: value);

  TwTextBuilder _fontSizedText({required double scaleFactor, required TwTextBuilder child}) {
    _fontSize = _fontSize ?? 14.0;
    _scaleFactor = scaleFactor;
    return this;
  }

  /// ============== FONT WEIGHT ============== ///

  /// Sets [FontWeight] to [FontWeight.w100]
  TwTextBuilder get hairLine => _fontWeightedText(child: this, weight: FontWeight.w100);

  /// Sets [FontWeight] to [FontWeight.w200]
  TwTextBuilder get thin => _fontWeightedText(child: this, weight: FontWeight.w200);

  /// Sets [FontWeight] to [FontWeight.w300]
  TwTextBuilder get light => _fontWeightedText(child: this, weight: FontWeight.w300);

  /// Sets [FontWeight] to [FontWeight.w400]
  TwTextBuilder get normal => _fontWeightedText(child: this, weight: FontWeight.w400);

  /// Sets [FontWeight] to [FontWeight.w500]
  TwTextBuilder get medium => _fontWeightedText(child: this, weight: FontWeight.w500);

  /// Sets [FontWeight] to [FontWeight.w600]
  TwTextBuilder get semiBold => _fontWeightedText(child: this, weight: FontWeight.w600);

  /// Sets [FontWeight] to [FontWeight.w700]
  TwTextBuilder get bold => _fontWeightedText(child: this, weight: FontWeight.w700);

  /// Sets [FontWeight] to [FontWeight.w800]
  TwTextBuilder get extraBold => _fontWeightedText(child: this, weight: FontWeight.w800);

  /// Sets [FontWeight] to [FontWeight.w900]
  TwTextBuilder get extraBlack => _fontWeightedText(child: this, weight: FontWeight.w900);

  TwTextBuilder _fontWeightedText({required FontWeight weight, required TwTextBuilder child}) {
    _fontWeight = weight;
    return this;
  }

  /// ============== TEXT LETTER SPACING ============== ///

  /// Sets [letterSpacing] to -3.0
  TwTextBuilder get tightest => this.._letterSpacing = -3.0;

  /// Sets [letterSpacing] to -2.0
  TwTextBuilder get tighter => this.._letterSpacing = -2.0;

  /// Sets [letterSpacing] to -1.0
  TwTextBuilder get tight => this.._letterSpacing = -1.0;

  /// Sets [letterSpacing] to 1.0
  TwTextBuilder get wide => this.._letterSpacing = 1.0;

  /// Sets [letterSpacing] to 2.0
  TwTextBuilder get wider => this.._letterSpacing = 2.0;

  /// Sets [letterSpacing] to 3.0
  TwTextBuilder get widest => this.._letterSpacing = 3.0;

  /// Sets custom [letterSpacing] with [val]
  TwTextBuilder letterSpacing(double val) => this.._letterSpacing = val;

  /// ============== TEXT TRANSFORMATION ============== ///

  /// Sets [FontStyle] to [FontStyle.italic]
  TwTextBuilder get italic => this.._fontStyle = FontStyle.italic;

  /// Sets [TextDecoration] as [TextDecoration.underline]
  TwTextBuilder get underline => this.._decoration = TextDecoration.underline;

  /// Sets [TextDecoration] as [TextDecoration.overline]
  TwTextBuilder get overline => this.._decoration = TextDecoration.overline;

  /// Sets [TextDecoration] as [TextDecoration.lineThrough]
  TwTextBuilder get lineThrough => this.._decoration = TextDecoration.lineThrough;

  /// Converts the text to fully uppercase.
  TwTextBuilder get uppercase => this.._text = _text!.toUpperCase();

  /// Converts the text to fully lowercase.
  TwTextBuilder get lowercase => this.._text = _text!.toLowerCase();

  /// Converts the text to first letter of very word as uppercase.
  TwTextBuilder get capitalize => this.._text = Tw.ucWords('\${this.._text}');

  /// ============== LEADING ============== ///
  /// Sets [lineHeight] to 0.75
  TwTextBuilder get leading3 => this.._lineHeight = 0.75;

  /// Sets [lineHeight] to 1
  TwTextBuilder get leading4 => this.._lineHeight = 1;

  /// Sets [lineHeight] to 1.25
  TwTextBuilder get leading5 => this.._lineHeight = 1.25;

  /// Sets [lineHeight] to 1.5
  TwTextBuilder get leading6 => this.._lineHeight = 1.5;

  /// Sets [lineHeight] to 1.75
  TwTextBuilder get leading7 => this.._lineHeight = 1.75;

  /// Sets [lineHeight] to 2
  TwTextBuilder get leading8 => this.._lineHeight = 2;

  /// Sets [lineHeight] to 2.25
  TwTextBuilder get leading9 => this.._lineHeight = 2.25;

  /// Sets [lineHeight] to 2.5
  TwTextBuilder get leading10 => this.._lineHeight = 2.5;

  /// Sets [lineHeight] to 1
  TwTextBuilder get leadingNone => this.._lineHeight = 0.75;

  /// Sets [lineHeight] to 1
  TwTextBuilder get leadingTight => this.._lineHeight = 1;

  /// Sets [lineHeight] to 1.375
  TwTextBuilder get leadingSnug => this.._lineHeight = 1.375;

  /// Sets [lineHeight] to 1.5
  TwTextBuilder get leadingNormal => this.._lineHeight = 1.5;

  /// Sets [lineHeight] to 1.625
  TwTextBuilder get leadingRelaxed => this.._lineHeight = 1.625;

  /// Sets [lineHeight] to 2
  TwTextBuilder get leadingLoose => this.._lineHeight = 2;

  /// Sets custom [lineHeight] with [val]
  TwTextBuilder lineHeight(double val) => this.._lineHeight = val;

  /// ============== RENDER TEXT WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    final ts = TextStyle(
      color: twColor,
      fontSize: _fontSize,
      fontStyle: _fontStyle,
      fontFamily: _fontFamily,
      fontWeight: _fontWeight,
      letterSpacing: _letterSpacing,
      decoration: _decoration,
      height: _lineHeight,
      textBaseline: _textBaseline ?? TextBaseline.alphabetic,
      wordSpacing: _wordSpacing,
    );

    return Text(
      _text!,
      key: key,
      textAlign: _textAlign,
      maxLines: _maxLines,
      textScaleFactor: _scaleFactor,
      style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts,
      softWrap: _softWrap ?? true,
      overflow: _overflow ?? TextOverflow.clip,
      strutStyle: _strutStyle,
    );
  }
}

extension TextExtensions on Text {
  /// Extension method to directly access [TwTextBuilder]
  /// with any widget without wrapping or with dot operator.

  TwTextBuilder get twText => TwTextBuilder.existing(data!, style);
}
""";
