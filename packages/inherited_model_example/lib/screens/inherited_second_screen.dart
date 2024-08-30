import 'package:flutter/material.dart';
import 'package:inherited_model_example/model/inherited_data_model.dart';

class InheritedSecondScreen extends StatelessWidget {
  const InheritedSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataModel = InheritedDataModel.of(context, 'message');
    String message = dataModel?.message ?? 'No message';

    return Scaffold(
      appBar: AppBar(title: const Text('Inherited Second Screen')),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
