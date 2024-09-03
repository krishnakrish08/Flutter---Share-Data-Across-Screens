import 'package:bloc_example/bloc/data_event.dart';
import 'package:bloc_example/bloc/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataInitial());

  @override
  Stream<DataState> mapEventToState(DataEvent event) async* {
    if (event is UpdateMessage) {
      yield DataUpdated(event.message);
    }
  }
}
