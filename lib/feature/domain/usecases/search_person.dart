import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:rick_and_morty_with_null_safety/core/error/failure.dart';
import 'package:rick_and_morty_with_null_safety/core/usecases/usecase.dart';
import 'package:rick_and_morty_with_null_safety/feature/data/models/person_model.dart';
import 'package:rick_and_morty_with_null_safety/feature/domain/repositories/person_repository.dart';

class SearchPerson extends UseCase<List<PersonModel>, SearchPersonParams> {
  final PersonRepository personRepository;

  SearchPerson(this.personRepository);

  @override
  Future<Either<Failure, List<PersonModel>>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;

  const SearchPersonParams({required this.query});

  @override
  List<Object> get props => [query];
}
