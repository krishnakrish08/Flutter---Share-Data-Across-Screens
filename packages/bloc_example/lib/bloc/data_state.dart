import 'package:equatable/equatable.dart';

abstract class DataState extends Equatable {
  const DataState();

  @override
  List<Object> get props => [];
}

class DataInitial extends DataState {}

class DataUpdated extends DataState {
  final String message;

  const DataUpdated(this.message);

  @override
  List<Object> get props => [message];
}
