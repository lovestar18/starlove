import '../../../core/app_export.dart';
import 'featuresgrid_item_model.dart';

/// This class defines the variables used in the [homepage_container1_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageContainer1Model {
  Rx<List<FeaturesgridItemModel>> featuresgridItemList = Rx([
    FeaturesgridItemModel(
        image: ImageConstant.imgJewish31.obs, text: "ForJew Page".obs),
    FeaturesgridItemModel(
        image: ImageConstant.imgCommunity1.obs, text: "Groups".obs),
    FeaturesgridItemModel(
        image: ImageConstant.imgSettingsPrimary.obs, text: "Edit Profile".obs),
    FeaturesgridItemModel(
        image: ImageConstant.imgMaNishtana1.obs, text: "Kibitz (Chat)".obs),
    FeaturesgridItemModel(
        image: ImageConstant.imgDiscussion1.obs, text: "Forums".obs),
    FeaturesgridItemModel(
        image: ImageConstant.imgTelevision.obs, text: "Settings".obs)
  ]);
}
