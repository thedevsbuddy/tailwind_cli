import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'TwBuilder.dart';

/// Flutter Text Builder Widget
/// to provide utilities in your Text Widget
@protected
class TwText extends TwWidgetBuilder<Widget> with TwColorMixin<TwText> {
  TwText(this._text) {
    setChildForColoring(this);
  }

  TwText.existing(this._text, this._textStyle) {
    setChildForColoring(this);
  }

  String _text;
  String? _fontFamily;
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

  /// Set [color] of the text
  TwText color(Color color) {
    twColor = color;
    return this;
  }

  TwText maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  /// Set [fontFamily] for the text
  TwText fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Whether the text should break at soft line breaks.
  TwText softWrap(bool softWrap) {
    _softWrap = softWrap;
    return this;
  }

  /// The common baseline that should be aligned between this text span and its
  /// parent text span, or, for the root text spans, with the line box.
  TwText textBaseLine(TextBaseline baseline) {
    _textBaseline = baseline;
    return this;
  }

  /// Bring the words closer.
  TwText wordSpacing(double spacing) {
    _wordSpacing = spacing;
    return this;
  }

  /// Can be used to set overflow of a text.
  /// How visual overflow should be handled.
  TwText overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  /// Set [FontWeight] for the text
  TwText fontWeight(FontWeight weight) {
    _fontWeight = weight;
    return this;
  }

  /// Replace the closest enclosing [DefaultTextStyle].
  TwText textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  /// See [StrutStyle] for details.
  TwText strutStyle(StrutStyle _style) {
    _strutStyle = _style;
    return this;
  }

  /// ============== TEXT ALIGNMENT ============== ///
  TwText align(TextAlign align) => this.._textAlign = align;

  /// To align text in [center]
  TwText get center => this.._textAlign = TextAlign.center;

  /// To align text in [start]
  TwText get start => this.._textAlign = TextAlign.start;

  /// To align text in [end]
  TwText get end => this.._textAlign = TextAlign.end;

  /// To align text as [justify]
  TwText get justify => this.._textAlign = TextAlign.justify;

  /// To overlow text as [fade]
  TwText get fade => this.._overflow = TextOverflow.fade;

  /// To overlow text as [ellipsis]
  TwText get ellipsis => this.._overflow = TextOverflow.ellipsis;

  /// Truncates the text and add trailing [...]
  ///
  /// Sets overlow text as [ellipsis]
  TwText get truncate => this.._overflow = TextOverflow.ellipsis;

  /// To overlow text as [visible]
  TwText get visible => this.._overflow = TextOverflow.visible;

  /// ============== FONT THEME ============== ///
  /// Sets [TextTheme] headline 1
  TwText headline1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline1;
    return this;
  }

  /// Sets [TextTheme] headline 2
  TwText headline2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline2;
    return this;
  }

  /// Sets [TextTheme] headline 3
  TwText headline3(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline3;
    return this;
  }

  /// Sets [TextTheme] headline 4
  TwText headline4(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline4;
    return this;
  }

  /// Sets [TextTheme] headline 5
  TwText headline5(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline5;
    return this;
  }

  /// Sets [TextTheme] headline 6
  TwText headline6(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline6;
    return this;
  }

  /// Sets [TextTheme] bodyText1
  TwText bodyText1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyText1;
    return this;
  }

  /// Sets [TextTheme] bodyText2
  TwText bodyText2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyText2;
    return this;
  }

  /// Sets [TextTheme] caption
  TwText caption(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.caption;
    return this;
  }

  /// Sets [TextTheme] subtitle1
  TwText subtitle1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.subtitle1;
    return this;
  }

  /// Sets [TextTheme] subtitle2
  TwText subtitle2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.subtitle2;
    return this;
  }

  /// Sets [TextTheme] overline
  TwText overlineText(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.overline;
    return this;
  }

  /// Sets [TextTheme] button
  TwText buttonText(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.button;
    return this;
  }

  /// ============== FONT SIZES ============== ///
  TwText get textBase => this.._fontSize = TwSizes.textBase;
  TwText get textXs => this.._fontSize = TwSizes.textXs;
  TwText get textSm => this.._fontSize = TwSizes.textSm;
  TwText get textLg => this.._fontSize = TwSizes.textLg;
  TwText get textXl => this.._fontSize = TwSizes.textXl;
  TwText get textXl2 => this.._fontSize = TwSizes.textXl2;
  TwText get textXl3 => this.._fontSize = TwSizes.textXl3;
  TwText get textXl4 => this.._fontSize = TwSizes.textXl4;
  TwText get textXl5 => this.._fontSize = TwSizes.textXl5;
  TwText get textXl6 => this.._fontSize = TwSizes.textXl6;
  TwText get textXl7 => this.._fontSize = TwSizes.textXl7;
  TwText get textXl8 => this.._fontSize = TwSizes.textXl8;
  TwText get textXl9 => this.._fontSize = TwSizes.textXl9;

  /// To set fontSize of the text using [size]
  TwText size(double? size) => this.._fontSize = size;

  /// Sets [textScaleFactor] to custom value
  TwText scale(double value) => _fontSizedText(child: this, scaleFactor: value);

  TwText _fontSizedText({required double scaleFactor, required TwText child}) {
    _fontSize = _fontSize ?? 14.0;
    _scaleFactor = scaleFactor;
    return this;
  }

  /// ============== FONT WEIGHT ============== ///

  /// Sets [FontWeight] to [FontWeight.w100]
  TwText get hairLine =>
      _fontWeightedText(child: this, weight: FontWeight.w100);

  /// Sets [FontWeight] to [FontWeight.w200]
  TwText get thin => _fontWeightedText(child: this, weight: FontWeight.w200);

  /// Sets [FontWeight] to [FontWeight.w300]
  TwText get light => _fontWeightedText(child: this, weight: FontWeight.w300);

  /// Sets [FontWeight] to [FontWeight.w400]
  TwText get normal => _fontWeightedText(child: this, weight: FontWeight.w400);

  /// Sets [FontWeight] to [FontWeight.w500]
  TwText get medium => _fontWeightedText(child: this, weight: FontWeight.w500);

  /// Sets [FontWeight] to [FontWeight.w600]
  TwText get semiBold =>
      _fontWeightedText(child: this, weight: FontWeight.w600);

  /// Sets [FontWeight] to [FontWeight.w700]
  TwText get bold => _fontWeightedText(child: this, weight: FontWeight.w700);

  /// Sets [FontWeight] to [FontWeight.w800]
  TwText get extraBold =>
      _fontWeightedText(child: this, weight: FontWeight.w800);

  /// Sets [FontWeight] to [FontWeight.w900]
  TwText get extraBlack =>
      _fontWeightedText(child: this, weight: FontWeight.w900);

  TwText _fontWeightedText(
      {required FontWeight weight, required TwText child}) {
    _fontWeight = weight;
    return this;
  }

  /// ============== TEXT LETTER SPACING ============== ///

  /// Sets [letterSpacing] to -3.0
  TwText get tightest => this.._letterSpacing = -3.0;

  /// Sets [letterSpacing] to -2.0
  TwText get tighter => this.._letterSpacing = -2.0;

  /// Sets [letterSpacing] to -1.0
  TwText get tight => this.._letterSpacing = -1.0;

  /// Sets [letterSpacing] to 1.0
  TwText get wide => this.._letterSpacing = 1.0;

  /// Sets [letterSpacing] to 2.0
  TwText get wider => this.._letterSpacing = 2.0;

  /// Sets [letterSpacing] to 3.0
  TwText get widest => this.._letterSpacing = 3.0;

  /// Sets custom [letterSpacing] with [val]
  TwText letterSpacing(double val) => this.._letterSpacing = val;

  /// ============== TEXT TRANSFORMATION ============== ///

  /// Sets [FontStyle] to [FontStyle.italic]
  TwText get italic => this.._fontStyle = FontStyle.italic;

  /// Sets [TextDecoration] as [TextDecoration.underline]
  TwText get underline => this.._decoration = TextDecoration.underline;

  /// Sets [TextDecoration] as [TextDecoration.overline]
  TwText get overline => this.._decoration = TextDecoration.overline;

  /// Sets [TextDecoration] as [TextDecoration.lineThrough]
  TwText get lineThrough => this.._decoration = TextDecoration.lineThrough;

  /// Converts the text to fully uppercase.
  TwText get uppercase => this.._text = _text.toUpperCase();

  /// Converts the text to fully lowercase.
  TwText get lowercase => this.._text = _text.toLowerCase();

  /// Converts the text to first letter of very word as uppercase.
  TwText get capitalize => this.._text = TwUtils.ucWords('${this.._text}');

  /// ============== LEADING ============== ///
  /// Sets [lineHeight] to 0.75
  TwText get leading3 => this.._lineHeight = 0.75;

  /// Sets [lineHeight] to 1
  TwText get leading4 => this.._lineHeight = 1;

  /// Sets [lineHeight] to 1.25
  TwText get leading5 => this.._lineHeight = 1.25;

  /// Sets [lineHeight] to 1.5
  TwText get leading6 => this.._lineHeight = 1.5;

  /// Sets [lineHeight] to 1.75
  TwText get leading7 => this.._lineHeight = 1.75;

  /// Sets [lineHeight] to 2
  TwText get leading8 => this.._lineHeight = 2;

  /// Sets [lineHeight] to 2.25
  TwText get leading9 => this.._lineHeight = 2.25;

  /// Sets [lineHeight] to 2.5
  TwText get leading10 => this.._lineHeight = 2.5;

  /// Sets [lineHeight] to 1
  TwText get leadingNone => this.._lineHeight = 0.75;

  /// Sets [lineHeight] to 1
  TwText get leadingTight => this.._lineHeight = 1;

  /// Sets [lineHeight] to 1.375
  TwText get leadingSnug => this.._lineHeight = 1.375;

  /// Sets [lineHeight] to 1.5
  TwText get leadingNormal => this.._lineHeight = 1.5;

  /// Sets [lineHeight] to 1.625
  TwText get leadingRelaxed => this.._lineHeight = 1.625;

  /// Sets [lineHeight] to 2
  TwText get leadingLoose => this.._lineHeight = 2;

  /// Sets custom [lineHeight] with [val]
  TwText lineHeight(double val) => this.._lineHeight = val;

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
      _text,
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
  /// Extension method to directly access [TwText]
  /// with any widget without wrapping or with dot operator.

  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isText] instead.')
  TwText get text => TwText.existing(data!, style);

  TwText get isText => TwText.existing(data!, style);
}

extension TextStringExtensions on String {
  /// Extension method to directly access [TwText]
  /// with [String] itself
  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isText] instead.')
  TwText get text => TwText(this);

  TwText get isText => TwText(this);
}
