// ignore_for_file: must_be_immutable

part of 'var_twentysix_bloc.dart';

/// Represents the state of VarTwentysix in the application.
class VarTwentysixState extends Equatable {
  VarTwentysixState({this.varTwentysixModelObj});

  VarTwentysixModel? varTwentysixModelObj;

  @override
  List<Object?> get props => [
        varTwentysixModelObj,
      ];
  VarTwentysixState copyWith({VarTwentysixModel? varTwentysixModelObj}) {
    return VarTwentysixState(
      varTwentysixModelObj: varTwentysixModelObj ?? this.varTwentysixModelObj,
    );
  }
}
