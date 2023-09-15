import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

class TwButtonExample extends StatelessWidget {
  const TwButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TwColumn(<Widget>[
      TwContainer(
        child: TwColumn(<Widget>[
          "TwButton constructor"
              .isText
              .red600
              .render()
              .isContainer
              .mb4
              .render(),
          TwButton(
            child: "TwButton with constructor"
                .isText
                .buttonText(context)
                .white
                .render(),
          ).primary.py3.px5.rounded.render(),
          TwButton(
            child: "Dark".isText.buttonText(context).white.render(),
          )
              .primary
              .py3
              .px5
              .rounded
              .onTap(() => TwService.setThemeMode(ThemeMode.dark))
              .render(),
          TwButton(
            child: "Light".isText.buttonText(context).white.render(),
          )
              .primary
              .py3
              .px5
              .rounded
              .onTap(() => TwService.setThemeMode(ThemeMode.light))
              .render(),
          TwButton(
            child: "System".isText.buttonText(context).white.render(),
          )
              .primary
              .py3
              .px5
              .rounded
              .onTap(() => TwService.setThemeMode(ThemeMode.system))
              .render(),
        ]).alignStart.justifyStart.render(),
      )
          .p4
          .mb4
          .white
          .rounded
          .width(double.maxFinite)
          .shadow
          .hasBorder
          .border1
          .borderCoolGray600
          .onDarkBorderPrimaryColor(context)
          .render(),
    ]).alignStart.justifyStart.min.render();
  }
}
