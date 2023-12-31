// ignore_for_file: must_be_immutable

part of 'var_fifty_bloc.dart';

/// Represents the state of VarFifty in the application.
class VarFiftyState extends Equatable {
  VarFiftyState({this.varFiftyModelObj});

  VarFiftyModel? varFiftyModelObj;

  @override
  List<Object?> get props => [
        varFiftyModelObj,
      ];
  VarFiftyState copyWith({VarFiftyModel? varFiftyModelObj}) {
    return VarFiftyState(
      varFiftyModelObj: varFiftyModelObj ?? this.varFiftyModelObj,
    );
  }
}
