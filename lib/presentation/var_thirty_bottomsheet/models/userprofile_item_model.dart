import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.englishText,
    this.welcomeText,
    this.englishImage,
    this.id,
  }) {
    englishText = englishText ?? "English";
    welcomeText = welcomeText ?? "Welcome to YKA";
    englishImage = englishImage ?? ImageConstant.imgRectangle985932x44;
    id = id ?? "";
  }

  String? englishText;

  String? welcomeText;

  String? englishImage;

  String? id;
}
