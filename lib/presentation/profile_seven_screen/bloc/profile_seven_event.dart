// ignore_for_file: must_be_immutable

part of 'profile_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeven widget is first created.
class ProfileSevenInitialEvent extends ProfileSevenEvent {
  @override
  List<Object?> get props => [];
}
