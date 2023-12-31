// ignore_for_file: must_be_immutable

part of 'var_thirty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarThirty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarThirtyEvent extends Equatable {}

/// Event that is dispatched when the VarThirty widget is first created.
class VarThirtyInitialEvent extends VarThirtyEvent {
  @override
  List<Object?> get props => [];
}
