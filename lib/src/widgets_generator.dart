import "WidgetGenerators/tw_button_generator.dart" as twButtonGenerator;
import "WidgetGenerators/tw_column_generator.dart" as twColumnGenerator;
import "WidgetGenerators/tw_container_generator.dart" as twContainerGenerator;
import "WidgetGenerators/tw_image_generator.dart" as twImageGenerator;
import "WidgetGenerators/tw_inkwell_generator.dart" as twInkWellGenerator;
import "WidgetGenerators/tw_padding_generator.dart" as twPaddingGenerator;
import "WidgetGenerators/tw_row_generator.dart" as twRowGenerator;
import "WidgetGenerators/tw_stack_generator.dart" as twStackGenerator;
import "WidgetGenerators/tw_text_generator.dart" as twTextGenerator;
import "WidgetGenerators/tw_wrap_generator.dart" as twWrapGenerator;

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
