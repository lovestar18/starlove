import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.userimage1, this.userimage2, this.userName, this.id}) {
    userimage1 = userimage1 ?? Rx(ImageConstant.imgUnsplashBqe0j0b26rq);
    userimage2 = userimage2 ?? Rx(ImageConstant.imgHugeIcon);
    userName = userName ?? Rx("You");
    id = id ?? Rx("");
  }

  Rx<String>? userimage1;

  Rx<String>? userimage2;

  Rx<String>? userName;

  Rx<String>? id;
}
