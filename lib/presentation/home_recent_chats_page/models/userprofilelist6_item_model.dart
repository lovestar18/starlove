import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist6_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist6ItemModel {
  Userprofilelist6ItemModel(
      {this.userImage,
      this.username,
      this.description,
      this.age,
      this.frameSize,
      this.id}) {
    userImage = userImage ?? Rx(ImageConstant.imgImage40x40);
    username = username ?? Rx("Darlene Steward");
    description = description ?? Rx("Pls take a look at the images.");
    age = age ?? Rx("18.31");
    frameSize = frameSize ?? Rx("5");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? username;

  Rx<String>? description;

  Rx<String>? age;

  Rx<String>? frameSize;

  Rx<String>? id;
}
