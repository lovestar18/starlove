import '../../../core/app_export.dart';
import 'listtwentytwote_item_model.dart';
import 'memberlist_item_model.dart';

/// This class defines the variables used in the [admin_dashboard_member_view_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminDashboardMemberViewContainerModel {
  Rx<List<ListtwentytwoteItemModel>> listtwentytwoteItemList = Rx([
    ListtwentytwoteItemModel(
        twentyTwoText: "22".obs, membersText: "Members".obs),
    ListtwentytwoteItemModel(
        twentyTwoText: "7".obs, membersText: "Pending Applications".obs)
  ]);

  Rx<List<MemberlistItemModel>> memberlistItemList = Rx([
    MemberlistItemModel(
        members: "Members".obs, pending: "Pending Application".obs),
    MemberlistItemModel(),
    MemberlistItemModel(),
    MemberlistItemModel(),
    MemberlistItemModel(),
    MemberlistItemModel()
  ]);
}
