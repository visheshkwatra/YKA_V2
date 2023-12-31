// ignore_for_file: must_be_immutable

part of 'profile_five_bloc.dart';

/// Represents the state of ProfileFive in the application.
class ProfileFiveState extends Equatable {
  ProfileFiveState({
    this.firstNameFieldController,
    this.lastNameFieldController,
    this.zipcodeFieldController,
    this.profileFiveModelObj,
  });

  TextEditingController? firstNameFieldController;

  TextEditingController? lastNameFieldController;

  TextEditingController? zipcodeFieldController;

  ProfileFiveModel? profileFiveModelObj;

  @override
  List<Object?> get props => [
        firstNameFieldController,
        lastNameFieldController,
        zipcodeFieldController,
        profileFiveModelObj,
      ];
  ProfileFiveState copyWith({
    TextEditingController? firstNameFieldController,
    TextEditingController? lastNameFieldController,
    TextEditingController? zipcodeFieldController,
    ProfileFiveModel? profileFiveModelObj,
  }) {
    return ProfileFiveState(
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      lastNameFieldController:
          lastNameFieldController ?? this.lastNameFieldController,
      zipcodeFieldController:
          zipcodeFieldController ?? this.zipcodeFieldController,
      profileFiveModelObj: profileFiveModelObj ?? this.profileFiveModelObj,
    );
  }
}
