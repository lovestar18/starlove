import '../../../core/app_export.dart';

/// This class is used in the [photolist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PhotolistItemModel {
  PhotolistItemModel(
      {this.photoOne, this.photoThree, this.photoFive, this.id}) {
    photoOne = photoOne ?? Rx(ImageConstant.imgPhoto4);
    photoThree = photoThree ?? Rx(ImageConstant.imgPhoto5);
    photoFive = photoFive ?? Rx(ImageConstant.imgPhoto6);
    id = id ?? Rx("");
  }

  Rx<String>? photoOne;

  Rx<String>? photoThree;

  Rx<String>? photoFive;

  Rx<String>? id;
}
