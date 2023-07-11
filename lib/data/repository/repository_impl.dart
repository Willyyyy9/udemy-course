import 'package:advanced/data/data-source/remote_data_source.dart';
import 'package:advanced/data/mapper/mapper.dart';
import 'package:advanced/data/network/failure.dart';
import 'package:advanced/data/network/network_info.dart';
import 'package:advanced/data/network/requests.dart';
import 'package:advanced/domain/models.dart';
import 'package:advanced/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);
  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == 0) {
        // Success right
        return Right(response.toDomain());
      } else {
        // Failure left
        return Left(Failure(code: 409, message: response.message ?? "Error"));
      }
    } else {
      //No Internet Connection left
      return Left(Failure(code: 501, message: "Internet"));
    }
  }
}
