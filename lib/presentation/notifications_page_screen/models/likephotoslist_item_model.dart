import '../../../core/app_export.dart';

/// This class is used in the [likephotoslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LikephotoslistItemModel {
  LikephotoslistItemModel(
      {this.likedPostsImage, this.likedPostsImage1, this.id}) {
    likedPostsImage = likedPostsImage ?? Rx(ImageConstant.imgOval);
    likedPostsImage1 = likedPostsImage1 ?? Rx(ImageConstant.imgGroup7164);
    id = id ?? Rx("");
  }

  Rx<String>? likedPostsImage;

  Rx<String>? likedPostsImage1;

  Rx<String>? id;
}
