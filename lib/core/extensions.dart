import 'package:flutter/material.dart';

extension WidgetSpacing on num {
  /// Adds an empty spacing on the horizontal axis of the a widget tree
  SizedBox get widthSpacing => SizedBox(width: this.toDouble());

  /// Adds an empty spacing on the vertical axis of the a widget tree
  SizedBox get heightSpacing => SizedBox(height: this.toDouble());
}
