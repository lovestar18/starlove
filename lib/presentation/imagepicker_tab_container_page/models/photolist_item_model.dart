import '../../../core/app_export.dart';

/// This class is used in the [photolist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PhotolistItemModel {
  PhotolistItemModel(
      {this.photooneoneOne, this.photothreeone, this.photofiveone, this.id}) {
    photooneoneOne = photooneoneOne ?? Rx(ImageConstant.imgPhoto4);
    photothreeone = photothreeone ?? Rx(ImageConstant.imgPhoto5);
    photofiveone = photofiveone ?? Rx(ImageConstant.imgPhoto6);
    id = id ?? Rx("");
  }

  Rx<String>? photooneoneOne;

  Rx<String>? photothreeone;

  Rx<String>? photofiveone;

  Rx<String>? id;
}
