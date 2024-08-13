import '../../../core/app_export.dart';

/// This class is used in the [userprofilesgrid_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilesgridItemModel {
  UserprofilesgridItemModel(
      {this.userImage, this.fullName, this.username, this.fullName1, this.id}) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle195);
    fullName = fullName ?? Rx("Full Name");
    username = username ?? Rx("Username");
    fullName1 = fullName1 ?? Rx(ImageConstant.imgGroup427320935);
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? fullName;

  Rx<String>? username;

  Rx<String>? fullName1;

  Rx<String>? id;
}
