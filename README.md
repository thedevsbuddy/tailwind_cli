# Tailwind CLI
A simple yet awesome flutter package to generate and use TailwindCSS like
styling in your flutter projects.

#### Highlights
This will provide basic styling just like Tailwind provides in which
it is providing you ```Colors```, ```Gradient Colors```, Sizing ```(Padding, Margins)```,
```Roundness```, ```Shadows```, ```Font Sizes```, ```Font styling``` Etc.

## Getting Started

Install package
```bash
flutter pub add tailwind_cli
```

Now publish the ```tailwind.config.json``` file
```bash
flutter pub run tailwind_cli:init
```

Build / Generate tailwind styling
```bash
flutter pub run tailwind_cli:build
```

Add tailwind in your project's ```pubspec.yaml``` file under ```dependencies``` section
```yaml
tailwind:
    path: tailwind
```
