// ignore_for_file: must_be_immutable

part of 'profile_one_bloc.dart';

/// Represents the state of ProfileOne in the application.
class ProfileOneState extends Equatable {
  ProfileOneState({this.profileOneModelObj});

  ProfileOneModel? profileOneModelObj;

  @override
  List<Object?> get props => [
        profileOneModelObj,
      ];
  ProfileOneState copyWith({ProfileOneModel? profileOneModelObj}) {
    return ProfileOneState(
      profileOneModelObj: profileOneModelObj ?? this.profileOneModelObj,
    );
  }
}
