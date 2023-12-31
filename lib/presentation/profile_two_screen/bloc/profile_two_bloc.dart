import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/profile_two_screen/models/profile_two_model.dart';
part 'profile_two_event.dart';
part 'profile_two_state.dart';

/// A bloc that manages the state of a ProfileTwo according to the event that is dispatched to it.
class ProfileTwoBloc extends Bloc<ProfileTwoEvent, ProfileTwoState> {
  ProfileTwoBloc(ProfileTwoState initialState) : super(initialState) {
    on<ProfileTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileTwoInitialEvent event,
    Emitter<ProfileTwoState> emit,
  ) async {
    emit(state.copyWith(
        zipCodeTextFieldController: TextEditingController(),
        mobileNumberTextFieldController: TextEditingController(),
        secondaryZipCodeTextFieldController: TextEditingController(),
        zipCodeTextFieldController1: TextEditingController()));
  }
}
