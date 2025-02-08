
import 'package:equatable/equatable.dart';
import 'package:zzzbookly/features/home/data/models/book_model/book_model.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoading extends FeaturedBookState {}

final class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;
  const FeaturedBookSuccess(this.books);
}

final class FeaturedBookFailure extends FeaturedBookState {
  final String errMessage;
  const FeaturedBookFailure(this.errMessage);
}

