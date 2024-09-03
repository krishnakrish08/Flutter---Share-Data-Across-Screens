import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'joke_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => JokeBloc()..add(FetchJoke()),
        child: const JokeScreen(),
      ),
    );
  }
}

class JokeScreen extends StatelessWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Jokes'),
      ),
      body: Center(
        child: BlocBuilder<JokeBloc, JokeState>(
          builder: (context, state) {
            if (state is JokeInitial) {
              return const Text('Press the button to fetch a joke');
            } else if (state is JokeLoading) {
              return const CircularProgressIndicator();
            } else if (state is JokeLoaded) {
              return Text(
                state.joke,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              );
            } else if (state is JokeError) {
              return Text('Error: ${state.message}');
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
