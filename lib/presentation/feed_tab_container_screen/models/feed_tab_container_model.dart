import '../../../core/app_export.dart';
import 'listyour_story_item_model.dart';

/// This class defines the variables used in the [feed_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeedTabContainerModel {
  Rx<List<ListyourStoryItemModel>> listyourStoryItemList = Rx([
    ListyourStoryItemModel(
        yourStoryOne: ImageConstant.imgPlay.obs, yourstory: "Your Story".obs),
    ListyourStoryItemModel(
        yourStoryOne: ImageConstant.imgPlayPrimary.obs,
        yourstory: "Hossein ".obs),
    ListyourStoryItemModel(
        yourStoryOne: ImageConstant.imgPlayPrimary.obs, yourstory: "Ralph".obs),
    ListyourStoryItemModel(
        yourStoryOne: ImageConstant.imgSettingsPrimary1.obs,
        yourstory: "Theresa".obs),
    ListyourStoryItemModel(
        yourStoryOne: ImageConstant.imgPlayPrimary.obs, yourstory: "Wade".obs)
  ]);
}
