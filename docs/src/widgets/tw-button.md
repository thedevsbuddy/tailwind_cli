---
title: Creating button is so simple now
---

# TwButton

In every application, buttons are one of the main requirements and used to get user input or actions so we need to create buttons in which user can take some actions.

### Widget it builds

Keep this in mind that when using `Tailwind` styles for your buttons it will always work and create the `TextButton` widget.

### What issue does it solve?

As I created this package to help developer build their UI faster with less code so it helps you to create the `Buttons` for your applications with less code and ship your apps faster.

### Comparison between \`TextButton\` And \`TwButton\`

::: code-group

```dart [TextButton]
TextButton(
    onPressed: () => print('Awesome'),
    child: Text("I am a TextButton"),
    style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryColor,
    ),
),
```

```dart [TwButton]
TwButton(
    onPressed: () => print('Awesome'),
    child: Text("I am a TwButton"),
).render(),
```

:::

### Create a TwButton widget

There are multiple methods to create this widget using `TailwindCLI` styles.

#### Method #1

```dart
TwButton(
    child: "I am a button".text.render(),
).px6.py2.roundedLg.primaryColor(context).render()
```

#### Method #2

```dart
TextButton(
    onPressed: (){},
    child: "I am a button".text.render(),
).isButton.px6.py2.roundedLg.primaryColor(context).render(),
```
