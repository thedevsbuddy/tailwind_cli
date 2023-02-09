import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

class TwButtonExample extends StatelessWidget {
  const TwButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TwColumn(<Widget>[
      TwContainer(
        child: TwColumn([
          "TwButton contructor".isText.red600.onDarkWhite.render().isContainer.mb4.render(),
          TwButton(
            child: "TwButton with contructor".isText.buttonText(context).white.render(),
          ).primary.py3.px5.rounded.render(),
          TwButton(
            child: "Dark".isText.buttonText(context).white.render(),
          ).primary.py3.px5.rounded.onTap(() => TwService.setThemeMode('dark')).render(),
          TwButton(
            child: "Light".isText.buttonText(context).white.render(),
          ).primary.py3.px5.rounded.onTap(() => TwService.setThemeMode('light')).render(),
          TwButton(
            child: "System".isText.buttonText(context).white.render(),
          ).primary.py3.px5.rounded.onTap(() => TwService.setThemeMode('system')).render(),
        ]).alignStart.justifyStart.render(),
      ).p4.mb4.white.rounded.onDarkCoolGray900.width(double.maxFinite).shadow.render(),
    ]).alignStart.justifyStart.min.render();
  }
}
