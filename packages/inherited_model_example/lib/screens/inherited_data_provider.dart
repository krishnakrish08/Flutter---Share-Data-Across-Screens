import 'package:flutter/material.dart';
import 'package:inherited_model_example/model/inherited_data_model.dart';

class InheritedDataProvider extends StatefulWidget {
  final Widget child;

  const InheritedDataProvider({super.key, required this.child});

  @override
  InheritedDataProviderState createState() => InheritedDataProviderState();
}

class InheritedDataProviderState extends State<InheritedDataProvider> {
  String _message = 'Hello from Inherited DataProvider!';

  void updateMessage(String newMessage) {
    setState(() {
      _message = newMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedDataModel(
      message: _message,
      child: widget.child,
    );
  }
}
