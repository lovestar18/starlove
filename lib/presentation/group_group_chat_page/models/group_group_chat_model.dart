import '../../../core/app_export.dart';
import 'groupgrid2_item_model.dart';

/// This class defines the variables used in the [group_group_chat_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupGroupChatModel {
  Rx<List<Groupgrid2ItemModel>> groupgrid2ItemList = Rx([
    Groupgrid2ItemModel(
        groupImage: ImageConstant.imgRectangle1956.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs),
    Groupgrid2ItemModel(
        groupImage: ImageConstant.imgRectangle1957.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs),
    Groupgrid2ItemModel(
        groupImage: ImageConstant.imgRectangle1958.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs),
    Groupgrid2ItemModel(
        groupImage: ImageConstant.imgRectangle1959.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs)
  ]);
}
