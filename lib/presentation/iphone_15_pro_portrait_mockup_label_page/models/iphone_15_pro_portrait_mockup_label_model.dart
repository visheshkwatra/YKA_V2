// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'carservices_item_model.dart';
import 'ninetyeight_item_model.dart';

/// This class defines the variables used in the [iphone_15_pro_portrait_mockup_label_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone15ProPortraitMockupLabelModel extends Equatable {
  Iphone15ProPortraitMockupLabelModel({
    this.carservicesItemList = const [],
    this.ninetyeightItemList = const [],
  }) {}

  List<CarservicesItemModel> carservicesItemList;

  List<NinetyeightItemModel> ninetyeightItemList;

  Iphone15ProPortraitMockupLabelModel copyWith({
    List<CarservicesItemModel>? carservicesItemList,
    List<NinetyeightItemModel>? ninetyeightItemList,
  }) {
    return Iphone15ProPortraitMockupLabelModel(
      carservicesItemList: carservicesItemList ?? this.carservicesItemList,
      ninetyeightItemList: ninetyeightItemList ?? this.ninetyeightItemList,
    );
  }

  @override
  List<Object?> get props => [carservicesItemList, ninetyeightItemList];
}
