import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_with_null_safety/core/error/failure.dart';
import 'package:rick_and_morty_with_null_safety/core/usecases/usecase.dart';
import 'package:rick_and_morty_with_null_safety/feature/data/models/person_model.dart';
import 'package:rick_and_morty_with_null_safety/feature/domain/repositories/person_repository.dart';

class GetAllPersons extends UseCase<List<PersonModel>, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPersons(this.personRepository);

  @override
  Future<Either<Failure, List<PersonModel>>> call(
      PagePersonParams params) async {
    return await personRepository.getAllPersons(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;

  const PagePersonParams({required this.page});

  @override
  List<Object> get props => [page];
}
