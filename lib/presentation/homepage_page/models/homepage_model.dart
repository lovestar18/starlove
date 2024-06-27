import '../../../core/app_export.dart';
import 'column_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageModel {
  Rx<List<ColumnItemModel>> columnItemList = Rx([
    ColumnItemModel(
        image: ImageConstant.imgJewish31.obs, text: "ForJew Page".obs),
    ColumnItemModel(image: ImageConstant.imgCommunity1.obs, text: "Groups".obs),
    ColumnItemModel(
        image: ImageConstant.imgSettingsIndigoA70001.obs,
        text: "Edit Profile".obs),
    ColumnItemModel(
        image: ImageConstant.imgMaNishtana1.obs, text: "Kibitz (Chat)".obs),
    ColumnItemModel(
        image: ImageConstant.imgDiscussion1.obs, text: "Forums".obs),
    ColumnItemModel(
        image: ImageConstant.imgTelevisionIndigoA70001.obs,
        text: "Settings".obs)
  ]);
}
