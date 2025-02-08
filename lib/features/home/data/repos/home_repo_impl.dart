import 'package:dartz/dartz.dart';
import 'package:zzzbookly/core/errors/failures.dart';
import 'package:zzzbookly/features/home/data/models/book_model/book_model.dart';
import 'package:zzzbookly/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchMyFavoriteBooks() {
    // TODO: implement fetchMyFavoriteBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchTrandingBooks() {
    // TODO: implement fetchTrandingBooks
    throw UnimplementedError();
  }
}