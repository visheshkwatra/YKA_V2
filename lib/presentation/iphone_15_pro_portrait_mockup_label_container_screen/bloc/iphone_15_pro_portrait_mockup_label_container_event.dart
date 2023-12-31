// ignore_for_file: must_be_immutable

part of 'iphone_15_pro_portrait_mockup_label_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone15ProPortraitMockupLabelContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone15ProPortraitMockupLabelContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone15ProPortraitMockupLabelContainer widget is first created.
class Iphone15ProPortraitMockupLabelContainerInitialEvent
    extends Iphone15ProPortraitMockupLabelContainerEvent {
  @override
  List<Object?> get props => [];
}
