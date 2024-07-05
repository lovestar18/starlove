import '../../../core/app_export.dart';

/// This class is used in the [notificationslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificationslistItemModel {
  NotificationslistItemModel({this.userImage, this.likedImage, this.id}) {
    userImage = userImage ?? Rx(ImageConstant.imgOval);
    likedImage = likedImage ?? Rx(ImageConstant.imgGroup7164);
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? likedImage;

  Rx<String>? id;
}
