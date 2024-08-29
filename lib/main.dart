import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/model/provider_data_model.dart';
import 'package:share_data_across_screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderDataModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Share Data Across screens',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
