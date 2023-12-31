import '../../../core/app_export.dart';

/// This class is used in the [ninetyeight_item_widget] screen.
class NinetyeightItemModel {
  NinetyeightItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgMaskGroup;
    id = id ?? "";
  }

  String? image;

  String? id;
}
