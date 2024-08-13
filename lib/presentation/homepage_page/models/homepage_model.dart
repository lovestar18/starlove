import '../../../core/app_export.dart';
import 'featuresgrid_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageModel {
  Rx<List<FeaturesgridItemModel>> featuresgridItemList = Rx([
    FeaturesgridItemModel(
        closeImage: ImageConstant.imgCloseOnprimary.obs,
        text: "ForJew Page".obs),
    FeaturesgridItemModel(
        closeImage: ImageConstant.imgProfile2user.obs, text: "Groups".obs),
    FeaturesgridItemModel(
        closeImage: ImageConstant.imgMessageText2.obs, text: "Forums".obs),
    FeaturesgridItemModel(
        closeImage: ImageConstant.imgCalendar2.obs, text: "Events".obs),
    FeaturesgridItemModel(
        closeImage: ImageConstant.imgSms.obs, text: "Kibitz (Chat)".obs),
    FeaturesgridItemModel(
        closeImage: ImageConstant.imgSetting2.obs, text: "Settings".obs)
  ]);
}
