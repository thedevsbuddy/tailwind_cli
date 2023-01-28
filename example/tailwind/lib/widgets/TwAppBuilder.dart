import 'package:flutter/material.dart';

class TwAppBuilder extends StatefulWidget {
  final Widget Function(BuildContext context) builder;
  TwAppBuilder({required this.builder});

  @override
  _TwAppBuilderState createState() => _TwAppBuilderState();

  static _TwAppBuilderState? of(BuildContext context) {
    return context.findAncestorStateOfType<_TwAppBuilderState>();
  }
}

class _TwAppBuilderState extends State<TwAppBuilder> {
  @override
  void initState() {
    super.initState();
    final window = WidgetsBinding.instance.window;

    /// Rebuild UI if anytime [Brightness] is changed
    window.onPlatformBrightnessChanged = () => rebuild();

    /// Rebuild UI as soos as this [Widget] is in tree
    if (mounted) rebuild();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }

  /// Rebuilds the UI
  void rebuild() => setState(() {});
}


