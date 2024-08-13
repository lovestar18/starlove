import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist3_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist3ItemModel {
  Userprofilelist3ItemModel(
      {this.likedPostsImage,
      this.likedPostsImage1,
      this.likedPostsImage2,
      this.likedPostsImage3,
      this.id}) {
    likedPostsImage = likedPostsImage ?? Rx(ImageConstant.imgOval34x34);
    likedPostsImage1 = likedPostsImage1 ?? Rx(ImageConstant.imgRectangle34x34);
    likedPostsImage2 = likedPostsImage2 ?? Rx(ImageConstant.imgRectangle1);
    likedPostsImage3 = likedPostsImage3 ?? Rx(ImageConstant.imgRectangle2);
    id = id ?? Rx("");
  }

  Rx<String>? likedPostsImage;

  Rx<String>? likedPostsImage1;

  Rx<String>? likedPostsImage2;

  Rx<String>? likedPostsImage3;

  Rx<String>? id;
}
