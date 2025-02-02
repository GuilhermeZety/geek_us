import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geek_us/app/core/common/errors/exceptions.dart';
import 'package:geek_us/app/core/common/errors/failures.dart';
import 'package:geek_us/app/core/common/services/connection/connection_checker_connection_service_impl.dart';

class TreaterService {
  Future<Either<Failure, T>> call<T>(
    Future<T> Function() code, {
    String? errorIdentification,
    bool online = true,
    // bool auth = false,
  }) async {
    // if (auth && session.accessToken() == null) {
    //   return const Left(ServerFailure(message: 'Necessario autenticar-se'));
    // }
    if (await ConnectionCheckerPlusServiceImpl().isConnected || !online) {
      try {
        return Right(await code());
      } on ServerException catch (e, stt) {
        log(e.message ?? e.toString(), stackTrace: stt);

        return Left(
          Failure(
            message: e.message ?? errorIdentification ?? '',
            stackTrace: e.stackTrace,
          ),
        );
      } on DioException catch (e, stt) {
        log(e.response.toString(), stackTrace: stt);

        return Left(
          Failure(
            message: e.response?.data['message'] ?? e.response.toString(),
          ),
        );
      } on Exception catch (e, stt) {
        log(e.toString(), stackTrace: stt);

        return Left(
          Failure(
            message: e.toString(),
          ),
        );
      } on Failure catch (e, stt) {
        log(e.toString(), stackTrace: stt);

        return Left(e);
      } catch (e, stt) {
        if (e is TypeError) {
          log(e.toString(), error: e, stackTrace: stt, name: 'TypeError');
        } else {
          log(e.toString(), error: e, stackTrace: stt);
        }
        if (e is ServerException) {
          return Left(
            ServerFailure(
              message: e.message ?? '',
            ),
          );
        }
        return Left(
          Failure(
            message: e.toString(),
          ),
        );
      }
    } else {
      return const Left(Failure(message: 'Sem conexão com a internet'));
    }
  }
}
