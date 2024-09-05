import 'package:flutter/material.dart';
import 'package:value_listenable_example/value_notifier.dart';

// void main() {
//   runApp(
//     ValueDataProvider(
//       dataNotifier: ValueDataNotifier(),
//       child: const MyApp(),
//     ),
//   );
// }

class ValueDataProvider extends InheritedWidget {
  final ValueDataNotifier dataNotifier;

  const ValueDataProvider({super.key, required this.dataNotifier, required super.child});

  static ValueDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ValueDataProvider>();
  }

  @override
  bool updateShouldNotify(ValueDataProvider oldWidget) {
    return dataNotifier != oldWidget.dataNotifier;
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: ValueFirstScreen(),
//     );
//   }
// }
