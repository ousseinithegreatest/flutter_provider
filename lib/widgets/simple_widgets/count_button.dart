import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/models/count_type.dart';
import 'package:provider_test/providers/counter_provider.dart';

class CountButton extends StatelessWidget {
  CountType type;
  CountButton({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (() => handleAction(context)),
      heroTag: type,
      child: type.getIcon(),
    );
  }

  handleAction(BuildContext context) {
    switch (type) {
      case CountType.increment:
        context.read<CountProvider>().incrementCounter();
        break;
      case CountType.decrement:
        context.read<CountProvider>().decrementCounter();
        break;
      case CountType.reset:
        context.read<CountProvider>().resettCounter();
        break;
    }
  }
}
