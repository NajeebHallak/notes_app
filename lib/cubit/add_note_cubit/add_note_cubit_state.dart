part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitIsLoaded extends AddNoteCubitState {}

final class AddNoteCubitIsfaliure extends AddNoteCubitState {
  String error;

  AddNoteCubitIsfaliure(this.error);
}

final class AddNoteCubitIsSuccess extends AddNoteCubitState {}
