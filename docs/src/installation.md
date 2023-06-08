# Installation

Installation and setup of this the package is as easy as you setup other packages.

## Install package

```shell
flutter pub add -d tailwind_cli
```

Or mannually

```yaml
dev_dependencies:
  #...
  tailwind_cli: ^0.5.7 // [!code ++]
```

And then install the libraries with

```shell
flutter pub get
```

## Publish the config file

Now publish the `tailwind.config.json` file

```shell
flutter pub run tailwind_cli:init
```

Publishing the `tailwind.config.json` file will create a config file for Tailwind styles.

::: code-group

```json [tailwind.config.json]
{
  "colors": {},
  "spacers": {},
  "fontSizes": {},
  "opacity": {}
}
```

:::

## Build tailwind styles

```shell
flutter pub run tailwind_cli:build
```

## Add tailwind to your project

Include tailwind in your project's `pubspec.yaml` file under `dependencies` section
::: code-group

```yaml [pubspec.yaml]
dependencies:
  # Tailwind // [!code ++]
  tailwind: // [!code ++]
    path: tailwind // [!code ++]
```

:::

## Install tailwind in your project

```shell
flutter pub get
```

## Configure your app to use tailwind

### Initialize TwService
Go to your `main.dart` file and initialize `TwService` in your `main()` method:
```dart
void main() async { // Added async
  await TwService.init(); //[!code ++]
  runApp(const MyApp());
}
```
**Note: `TwService.init()` is an asynchronous method so you need to make `main` method as async** 
 
### Configure MaterialApp
Now you will need to add `TwAppKey` into your `MaterialApp` to do so:
```dart
return MaterialApp(
  key: TwService.appKey, //[!code ++]
  //... Other properties
);
```

### Add TwAppBuilder (Optional)

If you want to take benefit of the TwApp reactivity on theme mode change you should add `TwAppBuilder` into your app.

To do so wrap your `MaterialApp` with `TwAppBuilder`:
```dart
TwAppBuilder(
  builder: (BuildContext context, ThemeMode themeMode) {
    return MaterialApp(
    key: TwService.appKey,
    themeMode: themeMode, // [!code ++] // To add dynamic theme
    //... Other properties
    );
  }
);
```

## Made any changes?

Make sure to re-build tailwind styles if you have made any changes in the config file.

To do so run this command:

```shell
flutter pub run tailwind_cli:build
```

This command will generate whole tailwind styles and widgets with the new configuration that you added in the `tailwind.config.json` file.
