import '../../../core/app_export.dart';
import 'groupgrid1_item_model.dart';

/// This class defines the variables used in the [discover_groups_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DiscoverGroupsModel {
  Rx<List<Groupgrid1ItemModel>> groupgrid1ItemList = Rx([
    Groupgrid1ItemModel(
        groupImage: ImageConstant.imgRectangle1956.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs),
    Groupgrid1ItemModel(
        groupImage: ImageConstant.imgRectangle1957.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs),
    Groupgrid1ItemModel(
        groupImage: ImageConstant.imgRectangle1958.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs),
    Groupgrid1ItemModel(
        groupImage: ImageConstant.imgRectangle1959.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs),
    Groupgrid1ItemModel(
        groupImage: ImageConstant.imgRectangle1958.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs),
    Groupgrid1ItemModel(
        groupImage: ImageConstant.imgRectangle1959.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs)
  ]);
}
