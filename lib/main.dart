import 'package:bloc_example/bloc/data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inherited_model_example/inherited_model_example.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/model/provider_data_model.dart';
import 'package:share_data_across_screens/home_screen.dart';
import 'package:value_listenable_example/value_data_provider.dart';
import 'package:value_listenable_example/value_notifier.dart';

void main() {
  runApp(
    InheritedDataProvider(
      child: ValueDataProvider(
        dataNotifier: ValueDataNotifier(),
        child: const MyApp(),
      ),
    ),
  );
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider<DataBloc>(
            create: (_) => DataBloc(),
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
      ),
    );
  }
}
