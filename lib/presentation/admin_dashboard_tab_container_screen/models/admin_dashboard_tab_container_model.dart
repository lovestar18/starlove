import '../../../core/app_export.dart';
import 'columntwentytwo_item_model.dart';

/// This class defines the variables used in the [admin_dashboard_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminDashboardTabContainerModel {
  Rx<List<ColumntwentytwoItemModel>> columntwentytwoItemList = Rx([
    ColumntwentytwoItemModel(
        twentyTwoText: "22".obs, membersText: "Members".obs),
    ColumntwentytwoItemModel(
        twentyTwoText: "7".obs, membersText: "Pending Applications".obs)
  ]);
}
