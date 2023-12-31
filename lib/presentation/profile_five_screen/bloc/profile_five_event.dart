// ignore_for_file: must_be_immutable

part of 'profile_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileFive widget is first created.
class ProfileFiveInitialEvent extends ProfileFiveEvent {
  @override
  List<Object?> get props => [];
}
