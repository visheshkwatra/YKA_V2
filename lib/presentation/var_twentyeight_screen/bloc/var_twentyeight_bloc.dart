import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/var_twentyeight_screen/models/var_twentyeight_model.dart';
part 'var_twentyeight_event.dart';
part 'var_twentyeight_state.dart';

/// A bloc that manages the state of a VarTwentyeight according to the event that is dispatched to it.
class VarTwentyeightBloc
    extends Bloc<VarTwentyeightEvent, VarTwentyeightState> {
  VarTwentyeightBloc(VarTwentyeightState initialState) : super(initialState) {
    on<VarTwentyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarTwentyeightInitialEvent event,
    Emitter<VarTwentyeightState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.varTwentysixScreen,
      );
    });
  }
}
