import 'package:flutter/material.dart';

class ValueDataNotifier {
  final ValueNotifier<String> messageNotifier =
      ValueNotifier<String>('Hello from DataNotifier!');
}
