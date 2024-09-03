import 'package:equatable/equatable.dart';

abstract class DataEvent extends Equatable {
  const DataEvent();

  @override
  List<Object> get props => [];
}

class UpdateMessage extends DataEvent {
  final String message;

  const UpdateMessage(this.message);

  @override
  List<Object> get props => [message];
}
