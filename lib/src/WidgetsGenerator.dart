import "WidgetGenerators/TwButtonGenerator.dart" as twButtonGenerator;
import "WidgetGenerators/TwColumnGenerator.dart" as twColumnGenerator;
import "WidgetGenerators/TwContainerGenerator.dart" as twContainerGenerator;
import "WidgetGenerators/TwImageGenerator.dart" as twImageGenerator;
import "WidgetGenerators/TwInkWellGenerator.dart" as twInkWellGenerator;
import "WidgetGenerators/TwPaddingGenerator.dart" as twPaddingGenerator;
import "WidgetGenerators/TwRowGenerator.dart" as twRowGenerator;
import "WidgetGenerators/TwStackGenerator.dart" as twStackGenerator;
import "WidgetGenerators/TwTextGenerator.dart" as twTextGenerator;
import "WidgetGenerators/TwWrapGenerator.dart" as twWrapGenerator;

Future<void> generate(_) async {
  await twTextGenerator.generate(_);
  await twContainerGenerator.generate(_);
  await twButtonGenerator.generate(_);
  await twPaddingGenerator.generate(_);
  await twStackGenerator.generate(_);
  await twColumnGenerator.generate(_);
  await twRowGenerator.generate(_);
  await twWrapGenerator.generate(_);
  await twImageGenerator.generate(_);
  await twInkWellGenerator.generate(_);
}
