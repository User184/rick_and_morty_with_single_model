import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_with_null_safety/feature/data/models/person_model.dart';

abstract class PersonState extends Equatable {
  const PersonState();

  @override
  List<Object> get props => [];
}

class PersonEmpty extends PersonState {
  @override
  List<Object> get props => [];
}

class PersonLoading extends PersonState {
  final List<PersonModel> oldPersonsList;
  final bool isFirstFetch;

  const PersonLoading(this.oldPersonsList, {this.isFirstFetch = false});

  @override
  List<Object> get props => [oldPersonsList];
}

class PersonLoaded extends PersonState {
  final List<PersonModel> personsList;

  const PersonLoaded(this.personsList);

  @override
  List<Object> get props => [personsList];
}

class PersonError extends PersonState {
  final String message;

  const PersonError({required this.message});

  @override
  List<Object> get props => [message];
}
