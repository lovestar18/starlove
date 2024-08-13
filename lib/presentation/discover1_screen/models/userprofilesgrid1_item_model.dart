import '../../../core/app_export.dart';

/// This class is used in the [userprofilesgrid1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilesgrid1ItemModel {
  Userprofilesgrid1ItemModel(
      {this.fullNameText,
      this.usernameText,
      this.settingsImage,
      this.fullNameImage,
      this.id}) {
    fullNameText = fullNameText ?? Rx("Full Name");
    usernameText = usernameText ?? Rx("Username");
    settingsImage = settingsImage ?? Rx(ImageConstant.imgSettingsPrimary);
    fullNameImage = fullNameImage ?? Rx(ImageConstant.imgVectorPrimary);
    id = id ?? Rx("");
  }

  Rx<String>? fullNameText;

  Rx<String>? usernameText;

  Rx<String>? settingsImage;

  Rx<String>? fullNameImage;

  Rx<String>? id;
}
