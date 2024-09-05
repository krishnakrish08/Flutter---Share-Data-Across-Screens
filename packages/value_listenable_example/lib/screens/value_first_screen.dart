import 'package:flutter/material.dart';
import 'package:value_listenable_example/value_data_provider.dart';
import 'package:value_listenable_example/screens/value_second_screen.dart';
import 'package:value_listenable_example/screens/value_third_screen.dart';

class ValueFirstScreen extends StatelessWidget {
  const ValueFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataNotifier = ValueDataProvider.of(context)!.dataNotifier;
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                dataNotifier.messageNotifier.value =
                    'Hello from the First Screen!';
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ValueSecondScreen()),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                dataNotifier.messageNotifier.value =
                    'Hello from the First Screen!';
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ValueThirdScreen()),
                );
              },
              child: const Text('Go to Third Screen'),
            ),
            // Add buttons for the other screens similarly          ],
          ],
        ),
      ),
    );
  }
}
