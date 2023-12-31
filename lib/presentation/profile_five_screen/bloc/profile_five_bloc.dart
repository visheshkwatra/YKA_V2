import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/profile_five_screen/models/profile_five_model.dart';
part 'profile_five_event.dart';
part 'profile_five_state.dart';

/// A bloc that manages the state of a ProfileFive according to the event that is dispatched to it.
class ProfileFiveBloc extends Bloc<ProfileFiveEvent, ProfileFiveState> {
  ProfileFiveBloc(ProfileFiveState initialState) : super(initialState) {
    on<ProfileFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiveInitialEvent event,
    Emitter<ProfileFiveState> emit,
  ) async {
    emit(state.copyWith(
        firstNameFieldController: TextEditingController(),
        lastNameFieldController: TextEditingController(),
        zipcodeFieldController: TextEditingController()));
  }
}
