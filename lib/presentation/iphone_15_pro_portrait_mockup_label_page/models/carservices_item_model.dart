import '../../../core/app_export.dart';

/// This class is used in the [carservices_item_widget] screen.
class CarservicesItemModel {
  CarservicesItemModel({
    this.drivingPleasureText,
    this.precisionCareText,
    this.drivingPleasureText1,
    this.precisionCareText1,
    this.id,
  }) {
    drivingPleasureText = drivingPleasureText ?? "Driving Pleasure.";
    precisionCareText = precisionCareText ?? "Precision Care for Your Car";
    drivingPleasureText1 = drivingPleasureText1 ?? "Driving Pleasure.";
    precisionCareText1 = precisionCareText1 ?? "Precision Care for Your Car";
    id = id ?? "";
  }

  String? drivingPleasureText;

  String? precisionCareText;

  String? drivingPleasureText1;

  String? precisionCareText1;

  String? id;
}
