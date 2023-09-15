import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class TwAppBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, ThemeMode themeMode) builder;
  TwAppBuilder({required this.builder});

  @override
  _TwAppBuilderState createState() => _TwAppBuilderState();

  static _TwAppBuilderState? of(BuildContext context) {
    return context.findAncestorStateOfType<_TwAppBuilderState>();
  }
}

class _TwAppBuilderState extends State<TwAppBuilder> {
  ThemeMode _themeMode = ThemeMode.system;
  final GetStorage _storage = GetStorage();

  @override
  void initState() {
    super.initState();
    final window = WidgetsBinding.instance.window;

    /// Rebuild UI if anytime [Brightness] is changed
    window.onPlatformBrightnessChanged = () => rebuild();

    /// Rebuild UI as soos as this [Widget] is in tree
    if (mounted) rebuild();
    _loadTheme();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _themeMode);
  }

  void _loadTheme() async {
    String? _theme = _storage.read('theme');
    _themeMode = _theme == 'dark'
        ? ThemeMode.dark
        : _theme == 'light'
            ? ThemeMode.light
            : ThemeMode.system;
    rebuild();
  }

  void setThemeMode(ThemeMode mode) async {
    String _themeMode = mode == ThemeMode.dark
        ? 'dark'
        : mode == ThemeMode.light
            ? 'light'
            : 'system';
    _storage.write('theme', _themeMode);
    _loadTheme();
  }

  Future<ThemeMode> getThemeMode() async {
    String? _theme = _storage.read('theme');
    return _theme == 'dark'
        ? ThemeMode.dark
        : _theme == 'light'
            ? ThemeMode.light
            : ThemeMode.system;
  }

  /// Rebuilds the UI
  void rebuild() => setState(() {});
}
