import '../../../core/app_export.dart';
import 'columntwentytwo1_item_model.dart';
import 'headerlist_item_model.dart';

/// This class defines the variables used in the [admin_dashboard_member_view_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminDashboardMemberViewContainerModel {
  Rx<List<Columntwentytwo1ItemModel>> columntwentytwo1ItemList = Rx([
    Columntwentytwo1ItemModel(
        twentyTwoText: "22".obs, membersText: "Members".obs),
    Columntwentytwo1ItemModel(
        twentyTwoText: "7".obs, membersText: "Pending Applications".obs)
  ]);

  Rx<List<HeaderlistItemModel>> headerlistItemList = Rx([
    HeaderlistItemModel(
        members: "Members".obs, pending: "Pending Application".obs),
    HeaderlistItemModel(),
    HeaderlistItemModel(),
    HeaderlistItemModel(),
    HeaderlistItemModel(),
    HeaderlistItemModel()
  ]);
}
