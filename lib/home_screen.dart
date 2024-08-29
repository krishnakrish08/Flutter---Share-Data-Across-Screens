import 'package:flutter/material.dart';
import 'package:provider_example/provider/screens/provider_first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const ProviderFirstScreen();
                  },
                ));
              },
              child: const Text("Provider"),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Inherited Model"),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Bloc"),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {},
              child: const Text("RiverPod"),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {},
              child: const Text("ValueListenableBuilder"),
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
