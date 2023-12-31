import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/var_twentysix_screen/models/var_twentysix_model.dart';
part 'var_twentysix_event.dart';
part 'var_twentysix_state.dart';

/// A bloc that manages the state of a VarTwentysix according to the event that is dispatched to it.
class VarTwentysixBloc extends Bloc<VarTwentysixEvent, VarTwentysixState> {
  VarTwentysixBloc(VarTwentysixState initialState) : super(initialState) {
    on<VarTwentysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarTwentysixInitialEvent event,
    Emitter<VarTwentysixState> emit,
  ) async {}
}
