import '../../../core/app_export.dart';
import 'forjewpage_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageModel {
  Rx<List<ForjewpageItemModel>> forjewpageItemList = Rx([
    ForjewpageItemModel(
        image: ImageConstant.imgJewish31.obs, text: "ForJew Page".obs),
    ForjewpageItemModel(
        image: ImageConstant.imgCommunity1.obs, text: "Groups".obs),
    ForjewpageItemModel(
        image: ImageConstant.imgAvatar1.obs, text: "Edit Profile".obs),
    ForjewpageItemModel(
        image: ImageConstant.imgMaNishtana1.obs, text: "Kibitz (Chat)".obs),
    ForjewpageItemModel(
        image: ImageConstant.imgDiscussion1.obs, text: "Forums".obs),
    ForjewpageItemModel(
        image: ImageConstant.imgSetting1.obs, text: "Settings".obs)
  ]);
}
