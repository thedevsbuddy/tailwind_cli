---
title: The ultimate solution to build flutter apps with tailwind styles
---

# Introduction

<!-- <figure><img src=".gitbook/assets/TailwindCLI-Banner.svg" alt=""><figcaption></figcaption></figure> -->

A simple yet awesome flutter package to generate and use TailwindCSS-like styling in your flutter projects.

This package is mainly focused on the UI part of any app, As it provides easy-to-use methods and Widgets to use in your apps.

## Inspiration

- [TailwindCSS](https://tailwindcss.com)
- [VelocityX](https://velocityx.dev)

## Who it is for?

As every flutter developer is aware that it takes a lot of code to create a simple section in their flutter apps, so keeping this issue in mind we are presenting you the power of tailwind CSS styles in your flutter projects which can be useful for you to create awesome and beautiful UI within minutes which usually takes hours.

## Why use Tailwind CLI?

As I already mentioned that this Library is useful for those who want to build their apps faster with ease and in less time. It helps you to reduce your code approx 80% and give the same result as you thought.

Here is an example and comparison between the native way to build a container to look like a button and the tailwind CLI way of writing code for the same.

### Making a container to look like a button

```dart
InkWell(
  onTap: () {
    // Do nothing for now!
  },
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Theme.of(context).primaryColor,
    ),
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    child: Text(
      "Native Container As Button",
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1,
        color: Colors.white,
      ),
    ),
  ),
),
```

### The tailwind way:

```dart
"Tailwind Container As Button".isText
.textSm
.semiBold
.white
.leadingNormal
.render()
.isContainer /// Container starts here
.roundedLg
.primaryColor(context)
.render()
.onTap(() => print("Do nothing for now!")),
```

### Another way with Tailwind:

```dart
TwInkWell(
  child: TwContainer(
    child: TwText('Tailwind Container As Button')
    .textSm
    .semiBold
    .white
    .leadingNormal
    .render(),
  )
  .roundedLg
  .primaryColor(context)
  .render(),
)
.onTap(() => print("Do nothing for now!"))
.render(),
```

There are multiple ways to do the same thing with tailwind styles which can be helpful for any developer.

This is just a highlight of this package there is a lot more which can be done with this package Please check each section for the different widgets and methods that are available.
