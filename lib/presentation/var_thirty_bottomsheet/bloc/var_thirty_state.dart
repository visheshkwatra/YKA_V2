// ignore_for_file: must_be_immutable

part of 'var_thirty_bloc.dart';

/// Represents the state of VarThirty in the application.
class VarThirtyState extends Equatable {
  VarThirtyState({this.varThirtyModelObj});

  VarThirtyModel? varThirtyModelObj;

  @override
  List<Object?> get props => [
        varThirtyModelObj,
      ];
  VarThirtyState copyWith({VarThirtyModel? varThirtyModelObj}) {
    return VarThirtyState(
      varThirtyModelObj: varThirtyModelObj ?? this.varThirtyModelObj,
    );
  }
}
