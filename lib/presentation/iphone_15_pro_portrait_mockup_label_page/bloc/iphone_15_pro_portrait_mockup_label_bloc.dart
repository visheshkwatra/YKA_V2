import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/carservices_item_model.dart';
import '../models/ninetyeight_item_model.dart';
import 'package:yka_v2/presentation/iphone_15_pro_portrait_mockup_label_page/models/iphone_15_pro_portrait_mockup_label_model.dart';
part 'iphone_15_pro_portrait_mockup_label_event.dart';
part 'iphone_15_pro_portrait_mockup_label_state.dart';

/// A bloc that manages the state of a Iphone15ProPortraitMockupLabel according to the event that is dispatched to it.
class Iphone15ProPortraitMockupLabelBloc extends Bloc<
    Iphone15ProPortraitMockupLabelEvent, Iphone15ProPortraitMockupLabelState> {
  Iphone15ProPortraitMockupLabelBloc(
      Iphone15ProPortraitMockupLabelState initialState)
      : super(initialState) {
    on<Iphone15ProPortraitMockupLabelInitialEvent>(_onInitialize);
  }

  List<CarservicesItemModel> fillCarservicesItemList() {
    return [
      CarservicesItemModel(
          drivingPleasureText: "Driving Pleasure.",
          precisionCareText: "Precision Care for Your Car",
          drivingPleasureText1: "Driving Pleasure.",
          precisionCareText1: "Precision Care for Your Car")
    ];
  }

  List<NinetyeightItemModel> fillNinetyeightItemList() {
    return [
      NinetyeightItemModel(image: ImageConstant.imgMaskGroup),
      NinetyeightItemModel(image: ImageConstant.imgImage5267)
    ];
  }

  _onInitialize(
    Iphone15ProPortraitMockupLabelInitialEvent event,
    Emitter<Iphone15ProPortraitMockupLabelState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone15ProPortraitMockupLabelModelObj:
            state.iphone15ProPortraitMockupLabelModelObj?.copyWith(
      carservicesItemList: fillCarservicesItemList(),
      ninetyeightItemList: fillNinetyeightItemList(),
    )));
  }
}
