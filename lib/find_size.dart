library find_size;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// A typedef representing a callback function that takes a [Size] parameter.
typedef OnWidgetSizeChange = void Function(Size contentSize);

/// A custom render object that captures the size changes of its child and
/// invokes the [onChange] callback when the size changes.
class FindSizeRenderObject extends RenderProxyBox {
  /// The previous size of the child.
  late Size oldSize = Size.zero;

  /// The callback function to be invoked when the size changes.
  final OnWidgetSizeChange onChange;

  /// Creates a [FindSizeRenderObject] with the provided [onChange] callback.
  FindSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child!.size;

    /// Check if the size has changed since the last layout.
    if (oldSize == newSize) return;

    oldSize = newSize;

    /// Schedule the [onChange] callback to be called after the current frame.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}

/// A widget that wraps a single child and notifies when the child's size changes.
class FindSize extends SingleChildRenderObjectWidget {
  /// The callback function to be invoked when the child's size changes.
  final OnWidgetSizeChange onChange;

  /// Creates a [FindSize] widget with the provided [onChange] callback.
  const FindSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return FindSizeRenderObject(onChange);
  }
}
