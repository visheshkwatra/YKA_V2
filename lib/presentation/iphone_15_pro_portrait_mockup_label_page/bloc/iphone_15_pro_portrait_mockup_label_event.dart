// ignore_for_file: must_be_immutable

part of 'iphone_15_pro_portrait_mockup_label_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone15ProPortraitMockupLabel widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone15ProPortraitMockupLabelEvent extends Equatable {}

/// Event that is dispatched when the Iphone15ProPortraitMockupLabel widget is first created.
class Iphone15ProPortraitMockupLabelInitialEvent
    extends Iphone15ProPortraitMockupLabelEvent {
  @override
  List<Object?> get props => [];
}
