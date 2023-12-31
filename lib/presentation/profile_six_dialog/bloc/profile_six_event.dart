// ignore_for_file: must_be_immutable

part of 'profile_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixEvent extends Equatable {}

/// Event that is dispatched when the ProfileSix widget is first created.
class ProfileSixInitialEvent extends ProfileSixEvent {
  @override
  List<Object?> get props => [];
}
