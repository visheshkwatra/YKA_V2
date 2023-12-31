// ignore_for_file: must_be_immutable

part of 'profile_three_bloc.dart';

/// Represents the state of ProfileThree in the application.
class ProfileThreeState extends Equatable {
  ProfileThreeState({
    this.otpController,
    this.termsCheckBox = false,
    this.profileThreeModelObj,
  });

  TextEditingController? otpController;

  ProfileThreeModel? profileThreeModelObj;

  bool termsCheckBox;

  @override
  List<Object?> get props => [
        otpController,
        termsCheckBox,
        profileThreeModelObj,
      ];
  ProfileThreeState copyWith({
    TextEditingController? otpController,
    bool? termsCheckBox,
    ProfileThreeModel? profileThreeModelObj,
  }) {
    return ProfileThreeState(
      otpController: otpController ?? this.otpController,
      termsCheckBox: termsCheckBox ?? this.termsCheckBox,
      profileThreeModelObj: profileThreeModelObj ?? this.profileThreeModelObj,
    );
  }
}
