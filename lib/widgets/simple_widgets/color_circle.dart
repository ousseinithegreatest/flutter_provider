import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/color_provider.dart';

class ColorCircle extends StatelessWidget {
  final MaterialColor color;
  const ColorCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (() => context.read<ColorProvider>().changeColor(color)),
      backgroundColor: color,
      heroTag: color,
    );
  }
}
