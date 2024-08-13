import '../../../core/app_export.dart';
import 'photolist_item_model.dart';

/// This class defines the variables used in the [imagepicker_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ImagepickerTabContainerModel {
  Rx<List<PhotolistItemModel>> photolistItemList = Rx([
    PhotolistItemModel(
        photoOne: ImageConstant.imgPhoto4.obs,
        photoThree: ImageConstant.imgPhoto5.obs,
        photoFive: ImageConstant.imgPhoto6.obs),
    PhotolistItemModel(
        photoOne: ImageConstant.imgPhoto10.obs,
        photoThree: ImageConstant.imgPhoto11.obs,
        photoFive: ImageConstant.imgPhoto12.obs),
    PhotolistItemModel(
        photoThree: ImageConstant.imgPhoto8.obs,
        photoFive: ImageConstant.imgPhoto9.obs)
  ]);
}
