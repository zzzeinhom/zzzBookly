import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zzzbookly/features/home/presentaion/managers/featured_books_cubit/featured_books_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
