import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_v2/presentation/landing_page_screen/models/landing_page_model.dart';
part 'landing_page_event.dart';
part 'landing_page_state.dart';

/// A bloc that manages the state of a LandingPage according to the event that is dispatched to it.
class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc(LandingPageState initialState) : super(initialState) {
    on<LandingPageInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<LandingPageState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<LandingPageState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    LandingPageInitialEvent event,
    Emitter<LandingPageState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprController: TextEditingController(),
      isSelectedSwitch: false,
    ));
  }
}
