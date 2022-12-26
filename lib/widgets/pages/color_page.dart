import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/color_provider.dart';
import 'package:provider_test/widgets/simple_widgets/color_circle.dart';

class ColorPage extends StatelessWidget {
  List<MaterialColor> colors = Colors.primaries;
  // const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Couleur Actuelle"),
              ColorCircle(color: context.watch<ColorProvider>().color)
            ],
          ),
          const Divider(),
          Expanded(
            child: GridView.builder(
              itemCount: colors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: ((context, index) {
                return Center(child: ColorCircle(color: colors[index]));
              }),
            ),
          ),
        ],
      ),
    );
  }
}
