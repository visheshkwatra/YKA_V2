// ignore_for_file: must_be_immutable

part of 'var_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarTwentyeightEvent extends Equatable {}

/// Event that is dispatched when the VarTwentyeight widget is first created.
class VarTwentyeightInitialEvent extends VarTwentyeightEvent {
  @override
  List<Object?> get props => [];
}
