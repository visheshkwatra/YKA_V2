// ignore_for_file: must_be_immutable

part of 'landing_page_bloc.dart';

/// Represents the state of LandingPage in the application.
class LandingPageState extends Equatable {
  LandingPageState({
    this.phoneNumberController,
    this.cprController,
    this.isSelectedSwitch = false,
    this.selectedCountry,
    this.landingPageModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprController;

  LandingPageModel? landingPageModelObj;

  bool isSelectedSwitch;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprController,
        isSelectedSwitch,
        selectedCountry,
        landingPageModelObj,
      ];
  LandingPageState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprController,
    bool? isSelectedSwitch,
    Country? selectedCountry,
    LandingPageModel? landingPageModelObj,
  }) {
    return LandingPageState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprController: cprController ?? this.cprController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      landingPageModelObj: landingPageModelObj ?? this.landingPageModelObj,
    );
  }
}
