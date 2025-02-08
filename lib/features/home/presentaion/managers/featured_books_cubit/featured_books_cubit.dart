import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zzzbookly/features/home/data/repos/home_repo.dart';
import 'package:zzzbookly/features/home/presentaion/managers/featured_books_cubit/featured_books_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.hoemRepo) : super(FeaturedBookInitial());

  final HomeRepo hoemRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await hoemRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBookFailure(failure.errMessage)),
        (books) => emit(FeaturedBookSuccess(books)));
  }
}
