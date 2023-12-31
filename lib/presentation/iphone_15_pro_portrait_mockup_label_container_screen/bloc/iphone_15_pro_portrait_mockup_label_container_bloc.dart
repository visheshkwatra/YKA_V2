import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/iphone_15_pro_portrait_mockup_label_container_screen/models/iphone_15_pro_portrait_mockup_label_container_model.dart';
part 'iphone_15_pro_portrait_mockup_label_container_event.dart';
part 'iphone_15_pro_portrait_mockup_label_container_state.dart';

/// A bloc that manages the state of a Iphone15ProPortraitMockupLabelContainer according to the event that is dispatched to it.
class Iphone15ProPortraitMockupLabelContainerBloc extends Bloc<
    Iphone15ProPortraitMockupLabelContainerEvent,
    Iphone15ProPortraitMockupLabelContainerState> {
  Iphone15ProPortraitMockupLabelContainerBloc(
      Iphone15ProPortraitMockupLabelContainerState initialState)
      : super(initialState) {
    on<Iphone15ProPortraitMockupLabelContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone15ProPortraitMockupLabelContainerInitialEvent event,
    Emitter<Iphone15ProPortraitMockupLabelContainerState> emit,
  ) async {}
}
