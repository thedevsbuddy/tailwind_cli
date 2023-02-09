/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwAlignmentMixin` class
const String target = "tailwind/lib/mixins/";

/// Get the full file path for the `TwAlignmentMixin` Class
///
/// [file] This gives a boilerplate for the `TwAlignmentMixin` class
const String file = "tailwind/lib/mixins/TwAlignmentMixin.dart";

/// Get the stub content for the `TwAlignmentMixin` Class
///
/// [stub] This gives a boilerplate for the `TwAlignmentMixin` class
const String stub = """
import 'package:flutter/material.dart';

mixin TwAlignmentMixin<T> {
  late T _child;

  @protected
  Alignment? twAlignment;

  @protected
  void setChildForAlignment(T child) {
    _child = child;
  }

  T alignment(Alignment val) {
    twAlignment = val;
    return _child;
  }

  T get topCenter => _alignChild(alignment: Alignment.topCenter);
  T get topLeft => _alignChild(alignment: Alignment.topLeft);
  T get topRight => _alignChild(alignment: Alignment.topRight);
  T get center => _alignChild(alignment: Alignment.center);
  T get centerLeft => _alignChild(alignment: Alignment.centerLeft);
  T get centerRight => _alignChild(alignment: Alignment.centerRight);
  T get bottomCenter => _alignChild(alignment: Alignment.bottomCenter);
  T get bottomLeft => _alignChild(alignment: Alignment.bottomLeft);
  T get bottomRight => _alignChild(alignment: Alignment.bottomRight);

  T _alignChild({required Alignment alignment}) {
    twAlignment = alignment;
    return _child;
  }
}
""";
