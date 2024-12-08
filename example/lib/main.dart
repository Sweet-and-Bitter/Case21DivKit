import 'package:divkit/divkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';

void main() {

  debugPrintDivKitViewLifecycle = true;
  debugPrintDivExpressionResolve = true;
  debugPrintDivPerformLayout = false;

  runApp(const ProviderScope(child: PlaygroundApp()));
}
