import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/var_fifty_screen/models/var_fifty_model.dart';
part 'var_fifty_event.dart';
part 'var_fifty_state.dart';

/// A bloc that manages the state of a VarFifty according to the event that is dispatched to it.
class VarFiftyBloc extends Bloc<VarFiftyEvent, VarFiftyState> {
  VarFiftyBloc(VarFiftyState initialState) : super(initialState) {
    on<VarFiftyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarFiftyInitialEvent event,
    Emitter<VarFiftyState> emit,
  ) async {}
}
