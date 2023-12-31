// ignore_for_file: must_be_immutable

part of 'var_fifty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarFifty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarFiftyEvent extends Equatable {}

/// Event that is dispatched when the VarFifty widget is first created.
class VarFiftyInitialEvent extends VarFiftyEvent {
  @override
  List<Object?> get props => [];
}
