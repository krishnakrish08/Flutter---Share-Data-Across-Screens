import 'package:flutter/material.dart';
import 'package:value_listenable_example/value_data_provider.dart';

class ValueSecondScreen extends StatelessWidget {
  const ValueSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataNotifier = ValueDataProvider.of(context)!.dataNotifier;
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ValueListenableBuilder<String>(
          valueListenable: dataNotifier.messageNotifier,
          builder: (context, message, child) {
            return Text(message);
          },
        ),
      ),
    );
  }
}
