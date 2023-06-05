# Installation

Installation and setup of this the package is as easy as you setup other packages.

## Install package

::: code-group

```shell [From Command Line]
flutter pub add -d tailwind_cli
```

```yaml [Mannual Installation]
dev_dependencies:
  #...
  tailwind_cli: ^0.5.1 // [!code ++]
```

:::

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

**Made any changes?**

Make sure to re-build tailwind styles if you have made any changes in the config file.

To do so run this command:

```shell
flutter pub run tailwind_cli:build
```

This command will generate whole tailwind styles and widgets with the new configuration that you added in the `tailwind.config.json` file.
