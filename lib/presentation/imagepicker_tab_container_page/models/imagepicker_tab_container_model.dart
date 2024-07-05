import '../../../core/app_export.dart';
import 'photolist_item_model.dart';

/// This class defines the variables used in the [imagepicker_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ImagepickerTabContainerModel {
  Rx<List<PhotolistItemModel>> photolistItemList = Rx([
    PhotolistItemModel(
        photooneoneOne: ImageConstant.imgPhoto4.obs,
        photothreeone: ImageConstant.imgPhoto5.obs,
        photofiveone: ImageConstant.imgPhoto6.obs),
    PhotolistItemModel(
        photooneoneOne: ImageConstant.imgPhoto10.obs,
        photothreeone: ImageConstant.imgPhoto11.obs,
        photofiveone: ImageConstant.imgPhoto12.obs),
    PhotolistItemModel(
        photothreeone: ImageConstant.imgPhoto8.obs,
        photofiveone: ImageConstant.imgPhoto9.obs)
  ]);
}
