import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/profile_six_dialog/models/profile_six_model.dart';
part 'profile_six_event.dart';
part 'profile_six_state.dart';

/// A bloc that manages the state of a ProfileSix according to the event that is dispatched to it.
class ProfileSixBloc extends Bloc<ProfileSixEvent, ProfileSixState> {
  ProfileSixBloc(ProfileSixState initialState) : super(initialState) {
    on<ProfileSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixInitialEvent event,
    Emitter<ProfileSixState> emit,
  ) async {}
}
