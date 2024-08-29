import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/model/provider_data_model.dart';
import 'package:provider_example/provider/screens/provider_second_screen.dart';
import 'package:provider_example/provider/screens/provider_third_screen.dart';

class ProviderFirstScreen extends StatelessWidget {
  const ProviderFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<ProviderDataModel>(context, listen: false)
                    .updateMessage('Hello from the First Screen!');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProviderSecondScreen()),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ProviderDataModel>(context, listen: false)
                    .updateMessage('Hello from the First Screen!');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProviderThirdScreen()),
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
