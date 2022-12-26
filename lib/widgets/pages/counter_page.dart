import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/models/count_type.dart';
import 'package:provider_test/providers/counter_provider.dart';
import 'package:provider_test/widgets/simple_widgets/count_button.dart';
import 'package:provider_test/widgets/simple_widgets/counter_text.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Text(
          'Votre numéro choisi est:',
          style: TextStyle(fontSize: 20),
        ),
        const CounterText(),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CountButton(type: CountType.decrement),
            CountButton(type: CountType.reset),
            CountButton(type: CountType.increment),
          ],
        )
      ],
    );
  }
}
