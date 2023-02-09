## 0.5.4

- Fixed `pub.dev` found formatting issues

## 0.5.3

- Fixed error `TwInkWell.dart` not exists.
- Fixed `TwService.dart` issue.

## 0.5.2

- Fixed issue where it was throwing error for null value.
- Fixed issue where it wasn't generating `TwContextExtension` file.
- Fixed example issue with dark mode and `TwImageWidget`.

## 0.5.1

- Added Documentations.

## 0.5.0

- Added support for `DarkTheme`.
- Added new Builder `TwAppBuilder`.
  - It is used to manage the dark theme for each color.
- Added `TwInkwell` Widget.
- Added `gestures` methods in `TwWidgetExtenstion`.
- Updated `Tw<Widget>` extensions added `is` prefix
  - Example: `isButton`, `isContainer`, `isRow`, `isColumn` etc.
  - Example Usage:
    - `"I Will Become a Text widget".isText.render()`.
- Optimized generator which generates tailwind styles.
- Renamed Mixins Classes added `Tw` prefix.

## 0.4.2

- Fixed `https://github.com/thedevsbuddy/tailwind_cli/issues/6` Issue.

## 0.4.1

- Fixed `export "./extensions/TwContextExtension.dart";` Issue.

## 0.4.0

- Fixed `fontSizes` in `TwText` Widget.
- Added `fontSizes` in the TwSizes Utility.

## 0.3.3

- Fixed `ColorMixin` error as now it is method not getter.

## 0.3.2

- Refactored `ColorMixin`.
  - Changed theme color helpers to use `context` as it won't work without it.

## 0.3.1

- Refactored `TwColors`.
  - Made it use `MaterialColor` and its shades.
- Renamed `TwSpacers` to `TwSizes`.
  - Renamed `TwSpacers.sp<n>` to `TwSizes.spacer<n>`.
- Renamed `widthBox` to `spaceX`.
- Renamed `heightBox` to `spaceY`.
- Removed `opacity` method from `TwColorExtensions` because it was conflicting with flutter core.

## 0.3.0

- Fixed Colors extensions to use `context` as without context it wont respond to theme mode change.
- Separated Utility helpers.
  - Removed `Tw` mixin utility.
  - Added `TwColors` Utility.
  - Added `TwSpacers` Utility.
  - Added `TwUtils` Utility.
- Fixed Usage of all utilities.

## 0.2.5

- Added `TwStack` widget.
- Removed deprecated stuffs
  - Removed `accentColor`.
  - Removed `buttonColor`.
- Added new color
  - Added `colorScheme.secondary`.
- Fixed `textTheme` styles to work without `context`.
- Fixed `themeColors` to work without `context`.
- Changed `Tw` Mixin:
  - Now it is only a file to hold `const` values.
- Upgraded flutter version to `v3.x`.

## 0.2.1

- Changed theme color to getters instead of methods.
- Now theme colors can work without `context`.
- Updated to use flutter `v3`.

## 0.2.0

- Added `borderColor` method in `BorderMixin`.
- Added `borderWidth` method in `BorderMixin`.
- Added `o()` method in `ColorExtensions`.
- Added `opacity()` method in `ColorExtensions`.
- Added all duration property in the `TwNumberExtension`.
- Fixed minor bugs.

## 0.1.5

- Added BorderMixin to `tailwind_cli` project.
- Added Border for the `TwContainer`.
- Renamed `border()` method to `withBorder()`.

## 0.1.3

- Fixed bug where it was not generating TwWrap and TwPadding Widget.

## 0.1.2

- Fixed bug where it was not generating TwWrap and TwPadding Widget.

## 0.1.1

- Minor doc and description updated.

## 0.1.0

- Initial release.
