import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zzzbookly/core/errors/failures.dart';
import 'package:zzzbookly/core/utils/api_service.dart';
import 'package:zzzbookly/features/home/data/models/book_model/book_model.dart';
import 'package:zzzbookly/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final APIService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      List<BookModel> result = await apiService
          .get(
              'volumes?filter=free-ebooks&orderBy=relevance&q=subject:self_help+self_development')
          .then((value) =>
              value['items'].map((e) => BookModel.fromJson(e)).toList());

      return Right(result);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchTrandingBooks() async {
    try {
      List<BookModel> result = await apiService
          .get(
              'volumes?filter=free-ebooks&orderBy=newest&q=subject:self_help+self_development')
          .then((value) =>
              value['items'].map((e) => BookModel.fromJson(e)).toList());

      return Right(result);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
