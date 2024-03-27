part of 'homescreen_cubit.dart';

// @immutable
// sealed class HomescreenState {}

// final class HomescreenInitial extends HomescreenState {}

// final class HomescreenLoading extends HomescreenState {}

// final class HomescreenSuccess extends HomescreenState {
//   final NewsResponse myNews;
//   HomescreenSuccess(this.myNews);
// }

// final class HomescreenError extends HomescreenState {}

@immutable
class HomescreenState {}

class HomescreenInitial extends HomescreenState {}

class HomescreenLoading extends HomescreenState {}

class HomescreenSuccess extends HomescreenState {
  final NewsResponse myNews;
  HomescreenSuccess(this.myNews);
}

class HomescreenError extends HomescreenState {}
