import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/color_provider.dart';
import 'package:provider_test/providers/counter_provider.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final String string = context.watch<CountProvider>().count.toString();
    return Text(
      string,
      style: TextStyle(
          color: context.watch<ColorProvider>().color,
          fontWeight: FontWeight.bold,
          fontSize: 30),
    );
  }
}
