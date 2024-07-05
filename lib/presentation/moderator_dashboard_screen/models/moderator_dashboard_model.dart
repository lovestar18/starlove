import '../../../core/app_export.dart';
import 'memberslist_item_model.dart';

/// This class defines the variables used in the [moderator_dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ModeratorDashboardModel {
  Rx<List<MemberslistItemModel>> memberslistItemList = Rx([
    MemberslistItemModel(
        image: ImageConstant.imgPeople142x60.obs,
        title: "22".obs,
        members: "Members".obs),
    MemberslistItemModel(
        image: ImageConstant.imgVerified.obs,
        title: "7".obs,
        members: "Moderators".obs)
  ]);
}
