import '../../../core/app_export.dart';
import 'groupmemberslist_item_model.dart';

/// This class defines the variables used in the [moderator_dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ModeratorDashboardModel {
  Rx<List<GroupmemberslistItemModel>> groupmemberslistItemList = Rx([
    GroupmemberslistItemModel(
        groupImage: ImageConstant.imgPeople142x60.obs,
        groupTitle: "22".obs,
        groupMembers: "Members".obs),
    GroupmemberslistItemModel(
        groupImage: ImageConstant.imgVerified.obs,
        groupTitle: "7".obs,
        groupMembers: "Moderators".obs)
  ]);
}
