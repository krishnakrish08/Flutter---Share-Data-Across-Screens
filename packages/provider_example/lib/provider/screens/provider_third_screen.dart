import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/model/provider_data_model.dart';

class ProviderThirdScreen extends StatelessWidget {
  const ProviderThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String message = Provider.of<ProviderDataModel>(context).message;

    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
