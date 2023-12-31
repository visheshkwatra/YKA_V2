// ignore_for_file: must_be_immutable

part of 'profile_six_bloc.dart';

/// Represents the state of ProfileSix in the application.
class ProfileSixState extends Equatable {
  ProfileSixState({this.profileSixModelObj});

  ProfileSixModel? profileSixModelObj;

  @override
  List<Object?> get props => [
        profileSixModelObj,
      ];
  ProfileSixState copyWith({ProfileSixModel? profileSixModelObj}) {
    return ProfileSixState(
      profileSixModelObj: profileSixModelObj ?? this.profileSixModelObj,
    );
  }
}
