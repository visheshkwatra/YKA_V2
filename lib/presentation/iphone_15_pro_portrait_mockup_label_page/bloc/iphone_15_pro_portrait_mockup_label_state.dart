// ignore_for_file: must_be_immutable

part of 'iphone_15_pro_portrait_mockup_label_bloc.dart';

/// Represents the state of Iphone15ProPortraitMockupLabel in the application.
class Iphone15ProPortraitMockupLabelState extends Equatable {
  Iphone15ProPortraitMockupLabelState({
    this.searchController,
    this.sliderIndex = 0,
    this.iphone15ProPortraitMockupLabelModelObj,
  });

  TextEditingController? searchController;

  Iphone15ProPortraitMockupLabelModel? iphone15ProPortraitMockupLabelModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        iphone15ProPortraitMockupLabelModelObj,
      ];
  Iphone15ProPortraitMockupLabelState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    Iphone15ProPortraitMockupLabelModel? iphone15ProPortraitMockupLabelModelObj,
  }) {
    return Iphone15ProPortraitMockupLabelState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone15ProPortraitMockupLabelModelObj:
          iphone15ProPortraitMockupLabelModelObj ??
              this.iphone15ProPortraitMockupLabelModelObj,
    );
  }
}
