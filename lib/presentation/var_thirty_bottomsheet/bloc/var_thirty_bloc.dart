import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:yka_v2/presentation/var_thirty_bottomsheet/models/var_thirty_model.dart';
part 'var_thirty_event.dart';
part 'var_thirty_state.dart';

/// A bloc that manages the state of a VarThirty according to the event that is dispatched to it.
class VarThirtyBloc extends Bloc<VarThirtyEvent, VarThirtyState> {
  VarThirtyBloc(VarThirtyState initialState) : super(initialState) {
    on<VarThirtyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarThirtyInitialEvent event,
    Emitter<VarThirtyState> emit,
  ) async {
    emit(state.copyWith(
        varThirtyModelObj: state.varThirtyModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          englishText: "English",
          welcomeText: "Welcome to YKA",
          englishImage: ImageConstant.imgRectangle985932x44),
      UserprofileItemModel(
          englishText: "عربي",
          welcomeText: "مرحبا بكم في YKA",
          englishImage: ImageConstant.imgRectangle34626266)
    ];
  }
}
