import 'package:flutter/material.dart';
import 'package:inherited_model_example/model/inherited_data_model.dart';
import 'package:inherited_model_example/screens/inherited_data_provider.dart';
import 'package:inherited_model_example/screens/inherited_second_screen.dart';
import 'package:inherited_model_example/screens/inherited_third_screen.dart';

class InheritedFirstScreen extends StatelessWidget {
  const InheritedFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inherited First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final dataModel = InheritedDataModel.of(context, 'message');
                if (dataModel != null) {
                  (context.findAncestorStateOfType<
                          InheritedDataProviderState>())
                      ?.updateMessage('Hello from the First Screen!');
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InheritedSecondScreen()),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                final dataModel = InheritedDataModel.of(context, 'message');
                if (dataModel != null) {
                  (context.findAncestorStateOfType<
                          InheritedDataProviderState>())
                      ?.updateMessage('Hello from the First Screen!');
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InheritedThirdScreen()),
                );
              },
              child: const Text('Go to Third Screen'),
            ),
            // Add buttons for the other screens similarly
          ],
        ),
      ),
    );
  }
}
