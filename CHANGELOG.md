## 0.3.1
* Refactored `TwColors`.
  * Made it use `MaterialColor` and its shades.
* Renamed `TwSpacers` to `TwSizes`.
  * Renamed `TwSpacers.sp<n>` to `TwSizes.spacer<n>`.
* Renamed `widthBox` to `spaceX`.
* Renamed `heightBox` to `spaceY`.
* Removed `opacity` method from `TwColorExtensions` because it was conflicting with flutter core.

## 0.3.0
* Fixed Colors extensions to use `context` as without context it wont respond to theme mode change.
* Separated Utility helpers.
  * Removed `Tw` mixin utility.
  * Added `TwColors` Utility.
  * Added `TwSpacers` Utility.
  * Added `TwUtils` Utility.
* Fixed Usage of all utilities.

## 0.2.5
* Added `TwStack` widget.
* Removed deprecated stuffs
  * Removed `accentColor`.
  * Removed `buttonColor`.
* Added new color
  * Added `colorScheme.secondary`.
* Fixed `textTheme` styles to work without `context`.
* Fixed `themeColors` to work without `context`.
* Changed `Tw` Mixin:
  * Now it is only a file to hold `const` values.
* Upgraded flutter version to `v3.x`.

## 0.2.1
* Changed theme color to getters instead of methods.
* Now theme colors can work without `context`.
* Updated to use flutter `v3`.

## 0.2.0
* Added `borderColor` method in `BorderMixin`.
* Added `borderWidth` method in `BorderMixin`.
* Added `o()` method in `ColorExtensions`.
* Added `opacity()` method in `ColorExtensions`.
* Added all duration property in the `TwNumberExtension`.
* Fixed minor bugs.

## 0.1.5
* Added BorderMixin to `tailwind_cli` project.
* Added Border for the `TwContainer`.
* Renamed `border()` method to `withBorder()`.

## 0.1.3
* Fixed bug where it was not generating TwWrap and TwPadding Widget.

## 0.1.2
* Fixed bug where it was not generating TwWrap and TwPadding Widget.

## 0.1.1
* Minor doc and description updated.

## 0.1.0
* Initial release.