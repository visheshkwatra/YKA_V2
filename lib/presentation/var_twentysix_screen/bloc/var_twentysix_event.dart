// ignore_for_file: must_be_immutable

part of 'var_twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarTwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarTwentysixEvent extends Equatable {}

/// Event that is dispatched when the VarTwentysix widget is first created.
class VarTwentysixInitialEvent extends VarTwentysixEvent {
  @override
  List<Object?> get props => [];
}
