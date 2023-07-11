import 'package:advanced/data/network/failure.dart';
import 'package:advanced/data/network/requests.dart';
import 'package:advanced/domain/models.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
