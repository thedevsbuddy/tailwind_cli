---
title: The ultimate solution to build flutter apps with tailwind styles
---

# Introduction

<!-- <figure><img src=".gitbook/assets/TailwindCLI-Banner.svg" alt=""><figcaption></figcaption></figure> -->
<figure><img class="banner" src="/assets/Tailwind-banner.svg" alt="Tailwind CLI"><figcaption></figcaption></figure>

A simple yet awesome flutter package to generate and use TailwindCSS-like styling in your flutter projects.

This package is mainly focused on the UI part of any app, As it provides easy-to-use methods and Widgets to use in your apps.

## Inspiration

- [TailwindCSS](https://tailwindcss.com)
- [VelocityX](https://velocityx.dev)

## Who it is for?

This package is for those developers who wants to build their flutter apps faster but with less code. Because flutter developers know that creating even a simple section in their app requires a substantial amount of code. To mitigate this, I present the benefits of incorporating Tailwind CSS styles in your Flutter projects. With Tailwind, you can create stunning and functional UI in a fraction of the time it typically takes.

## Why use Tailwind CLI?

Streamline your app building process with ease! This Library, as previously mentioned, is the key to faster development and reduced code. Say goodbye to the tedious coding process and hello to a speedy 80% reduction, all while achieving the desired outcome.

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

<style>
.banner {
  border-radius: 8px;
  margin-block: 12px;
}

</style>
