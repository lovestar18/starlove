import '../../../core/app_export.dart';
import 'groupgrid_item_model.dart';

/// This class defines the variables used in the [groupsdashboard_container1_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupsdashboardContainer1Model {
  Rx<List<GroupgridItemModel>> groupgridItemList = Rx([
    GroupgridItemModel(
        groupImage: ImageConstant.imgRectangle1956.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs),
    GroupgridItemModel(
        groupImage: ImageConstant.imgRectangle1957.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs),
    GroupgridItemModel(
        groupImage: ImageConstant.imgRectangle1958.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs),
    GroupgridItemModel(
        groupImage: ImageConstant.imgRectangle1959.obs,
        groupName: "Group Name".obs,
        groupDescriptio: "Description".obs,
        groupCount: "+20".obs)
  ]);
}
