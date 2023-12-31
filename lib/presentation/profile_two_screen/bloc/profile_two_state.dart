// ignore_for_file: must_be_immutable

part of 'profile_two_bloc.dart';

/// Represents the state of ProfileTwo in the application.
class ProfileTwoState extends Equatable {
  ProfileTwoState({
    this.zipCodeTextFieldController,
    this.mobileNumberTextFieldController,
    this.secondaryZipCodeTextFieldController,
    this.zipCodeTextFieldController1,
    this.profileTwoModelObj,
  });

  TextEditingController? zipCodeTextFieldController;

  TextEditingController? mobileNumberTextFieldController;

  TextEditingController? secondaryZipCodeTextFieldController;

  TextEditingController? zipCodeTextFieldController1;

  ProfileTwoModel? profileTwoModelObj;

  @override
  List<Object?> get props => [
        zipCodeTextFieldController,
        mobileNumberTextFieldController,
        secondaryZipCodeTextFieldController,
        zipCodeTextFieldController1,
        profileTwoModelObj,
      ];
  ProfileTwoState copyWith({
    TextEditingController? zipCodeTextFieldController,
    TextEditingController? mobileNumberTextFieldController,
    TextEditingController? secondaryZipCodeTextFieldController,
    TextEditingController? zipCodeTextFieldController1,
    ProfileTwoModel? profileTwoModelObj,
  }) {
    return ProfileTwoState(
      zipCodeTextFieldController:
          zipCodeTextFieldController ?? this.zipCodeTextFieldController,
      mobileNumberTextFieldController: mobileNumberTextFieldController ??
          this.mobileNumberTextFieldController,
      secondaryZipCodeTextFieldController:
          secondaryZipCodeTextFieldController ??
              this.secondaryZipCodeTextFieldController,
      zipCodeTextFieldController1:
          zipCodeTextFieldController1 ?? this.zipCodeTextFieldController1,
      profileTwoModelObj: profileTwoModelObj ?? this.profileTwoModelObj,
    );
  }
}
