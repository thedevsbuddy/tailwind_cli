import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

class TwAbountSection extends StatelessWidget {
  const TwAbountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TwContainer(
      child: TwColumn(<Widget>[
        "TailwindCLI is a toolkit to generate Tailwind CSS like styling for your flutter app development to make sure you build beautifull UI and ship your apps sooner."
            .isText
            .blueGray600
            .render()
            .isContainer
            .mb4
            .render(),
      ]).render(),
    ).render();
  }
}
