// ignore_for_file: must_be_immutable

part of 'var_twentyeight_bloc.dart';

/// Represents the state of VarTwentyeight in the application.
class VarTwentyeightState extends Equatable {
  VarTwentyeightState({this.varTwentyeightModelObj});

  VarTwentyeightModel? varTwentyeightModelObj;

  @override
  List<Object?> get props => [
        varTwentyeightModelObj,
      ];
  VarTwentyeightState copyWith({VarTwentyeightModel? varTwentyeightModelObj}) {
    return VarTwentyeightState(
      varTwentyeightModelObj:
          varTwentyeightModelObj ?? this.varTwentyeightModelObj,
    );
  }
}
