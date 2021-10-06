import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_with_null_safety/core/error/failure.dart';
import 'package:rick_and_morty_with_null_safety/feature/data/models/person_model.dart';

abstract class PersonRepository {
  Future<Either<Failure, List<PersonModel>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonModel>>> searchPerson(String query);
}
