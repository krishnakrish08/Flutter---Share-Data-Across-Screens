import 'package:bloc_example/bloc/data_bloc.dart';
import 'package:bloc_example/bloc/data_event.dart';
import 'package:bloc_example/bloc/data_state.dart';
import 'package:bloc_example/screens/bloc_second_screen.dart';
import 'package:bloc_example/screens/bloc_third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFirstScreen extends StatelessWidget {
  const BlocFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: BlocBuilder<DataBloc, DataState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // BlocProvider.of<DataBloc>(context).add(
                    //     const UpdateMessage('Hello from the First Screen!'));
                    context.read<DataBloc>().add(const UpdateMessage('Hello from the First Screen!'));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlocSecondScreen()),
                    );
                  },
                  child: const Text('Go to Second Screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<DataBloc>().add(const UpdateMessage('Hello from the First Screen!'));
                    // BlocProvider.of<DataBloc>(context).add(
                    //     const UpdateMessage('Hello from the First Screen!'));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlocThirdScreen()),
                    );
                  },
                  child: const Text('Go to Third Screen'),
                ),
                // Add buttons for the other screens similarly          ],
              ],
            ),
          );
        },
      ),
    );
  }
}
