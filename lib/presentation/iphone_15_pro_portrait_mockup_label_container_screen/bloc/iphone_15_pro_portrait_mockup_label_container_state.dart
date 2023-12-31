// ignore_for_file: must_be_immutable

part of 'iphone_15_pro_portrait_mockup_label_container_bloc.dart';

/// Represents the state of Iphone15ProPortraitMockupLabelContainer in the application.
class Iphone15ProPortraitMockupLabelContainerState extends Equatable {
  Iphone15ProPortraitMockupLabelContainerState(
      {this.iphone15ProPortraitMockupLabelContainerModelObj});

  Iphone15ProPortraitMockupLabelContainerModel?
      iphone15ProPortraitMockupLabelContainerModelObj;

  @override
  List<Object?> get props => [
        iphone15ProPortraitMockupLabelContainerModelObj,
      ];
  Iphone15ProPortraitMockupLabelContainerState copyWith(
      {Iphone15ProPortraitMockupLabelContainerModel?
          iphone15ProPortraitMockupLabelContainerModelObj}) {
    return Iphone15ProPortraitMockupLabelContainerState(
      iphone15ProPortraitMockupLabelContainerModelObj:
          iphone15ProPortraitMockupLabelContainerModelObj ??
              this.iphone15ProPortraitMockupLabelContainerModelObj,
    );
  }
}
