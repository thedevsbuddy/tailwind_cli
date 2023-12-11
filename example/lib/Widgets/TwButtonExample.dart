import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

class TwButtonExample extends StatelessWidget {
  const TwButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TwColumn(<Widget>[
      "TwButton".isText.displaySmall(context).render(),
    ]).alignStart.justifyStart.min.render();
  }
}
