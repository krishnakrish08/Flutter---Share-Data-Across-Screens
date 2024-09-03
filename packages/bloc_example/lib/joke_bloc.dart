import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:equatable/equatable.dart';

// Events
abstract class JokeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchJoke extends JokeEvent {}

// States
abstract class JokeState extends Equatable {
  @override
  List<Object> get props => [];
}

class JokeInitial extends JokeState {}

class JokeLoading extends JokeState {}

class JokeLoaded extends JokeState {
  final String joke;

  JokeLoaded(this.joke);

  @override
  List<Object> get props => [joke];
}

class JokeError extends JokeState {
  final String message;

  JokeError(this.message);

  @override
  List<Object> get props => [message];
}

// BLoC
class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeBloc() : super(JokeInitial()) {
    on<FetchJoke>((event, emit) async {
      emit(JokeLoading());
      try {
        final response = await http.get(
            Uri.parse('https://official-joke-api.appspot.com/random_joke'));
        if (response.statusCode == 200) {
          final joke = json.decode(response.body);
          emit(JokeLoaded("${joke['setup']} - ${joke['punchline']}"));
        } else {
          emit(JokeError("Failed to load joke"));
        }
      } catch (e) {
        emit(JokeError(e.toString()));
      }
    });

    // Fetch a new joke every 5 seconds
    Timer.periodic(const Duration(seconds: 5), (timer) {
      add(FetchJoke());
    });
  }
}
