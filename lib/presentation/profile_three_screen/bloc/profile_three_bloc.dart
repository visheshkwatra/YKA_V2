import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_v2/presentation/profile_three_screen/models/profile_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'profile_three_event.dart';
part 'profile_three_state.dart';

/// A bloc that manages the state of a ProfileThree according to the event that is dispatched to it.
class ProfileThreeBloc extends Bloc<ProfileThreeEvent, ProfileThreeState>
    with CodeAutoFill {
  ProfileThreeBloc(ProfileThreeState initialState) : super(initialState) {
    on<ProfileThreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<ProfileThreeState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileThreeState> emit,
  ) {
    emit(state.copyWith(
      termsCheckBox: event.value,
    ));
  }

  _onInitialize(
    ProfileThreeInitialEvent event,
    Emitter<ProfileThreeState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
      termsCheckBox: false,
    ));
    listenForCode();
  }
}
