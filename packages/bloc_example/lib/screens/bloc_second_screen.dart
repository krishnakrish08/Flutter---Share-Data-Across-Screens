import 'package:bloc_example/bloc/data_bloc.dart';
import 'package:bloc_example/bloc/data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocSecondScreen extends StatelessWidget {
  const BlocSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            if (state is DataUpdated) {
              return Text(state.message);
            }
            return const Text('No message');
          },
        ),
      ),
    );
  }
}
