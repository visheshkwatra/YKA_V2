// ignore_for_file: must_be_immutable

part of 'profile_seven_bloc.dart';

/// Represents the state of ProfileSeven in the application.
class ProfileSevenState extends Equatable {
  ProfileSevenState({
    this.firstNameFieldController,
    this.lastNameFieldController,
    this.zipcodeFieldController,
    this.carDetailValueFieldController,
    this.profileSevenModelObj,
  });

  TextEditingController? firstNameFieldController;

  TextEditingController? lastNameFieldController;

  TextEditingController? zipcodeFieldController;

  TextEditingController? carDetailValueFieldController;

  ProfileSevenModel? profileSevenModelObj;

  @override
  List<Object?> get props => [
        firstNameFieldController,
        lastNameFieldController,
        zipcodeFieldController,
        carDetailValueFieldController,
        profileSevenModelObj,
      ];
  ProfileSevenState copyWith({
    TextEditingController? firstNameFieldController,
    TextEditingController? lastNameFieldController,
    TextEditingController? zipcodeFieldController,
    TextEditingController? carDetailValueFieldController,
    ProfileSevenModel? profileSevenModelObj,
  }) {
    return ProfileSevenState(
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      lastNameFieldController:
          lastNameFieldController ?? this.lastNameFieldController,
      zipcodeFieldController:
          zipcodeFieldController ?? this.zipcodeFieldController,
      carDetailValueFieldController:
          carDetailValueFieldController ?? this.carDetailValueFieldController,
      profileSevenModelObj: profileSevenModelObj ?? this.profileSevenModelObj,
    );
  }
}
