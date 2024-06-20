import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile2ItemModel {
  Userprofile2ItemModel(
      {this.userImage,
      this.username,
      this.description,
      this.age,
      this.frameCount,
      this.id}) {
    userImage = userImage ?? Rx(ImageConstant.imgImage40x40);
    username = username ?? Rx("Darlene Steward");
    description = description ?? Rx("Pls take a look at the images.");
    age = age ?? Rx("18.31");
    frameCount = frameCount ?? Rx("5");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? username;

  Rx<String>? description;

  Rx<String>? age;

  Rx<String>? frameCount;

  Rx<String>? id;
}
