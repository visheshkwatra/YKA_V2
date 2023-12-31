// ignore_for_file: must_be_immutable

part of 'profile_four_bloc.dart';

/// Represents the state of ProfileFour in the application.
class ProfileFourState extends Equatable {
  ProfileFourState({this.profileFourModelObj});

  ProfileFourModel? profileFourModelObj;

  @override
  List<Object?> get props => [
        profileFourModelObj,
      ];
  ProfileFourState copyWith({ProfileFourModel? profileFourModelObj}) {
    return ProfileFourState(
      profileFourModelObj: profileFourModelObj ?? this.profileFourModelObj,
    );
  }
}
