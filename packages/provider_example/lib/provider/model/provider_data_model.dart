import 'package:flutter/material.dart';

class ProviderDataModel with ChangeNotifier {
  String _message = "Hello From Provider Data Model";

  String get message => _message;

  void updateMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}
