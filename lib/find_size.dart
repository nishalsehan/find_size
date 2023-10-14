library find_size;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef OnWidgetSizeChange = void Function(Size contentSize);

class FindSizeRenderObject extends RenderProxyBox {
  late Size oldSize = Size.zero;
  final OnWidgetSizeChange onChange;

  FindSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child!.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}

class FindSize extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange onChange;

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