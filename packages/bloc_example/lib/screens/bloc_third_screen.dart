import 'package:bloc_example/bloc/data_bloc.dart';
import 'package:bloc_example/bloc/data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocThirdScreen extends StatelessWidget {
  const BlocThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
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
