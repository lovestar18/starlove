import '../../../core/app_export.dart';
import 'grouplist1_item_model.dart';

/// This class defines the variables used in the [admin_dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminDashboardModel {
  Rx<List<Grouplist1ItemModel>> grouplist1ItemList = Rx([
    Grouplist1ItemModel(
        groupName: "Group name".obs, groupDescriptio: "description".obs),
    Grouplist1ItemModel(
        groupName: "Group name".obs, groupDescriptio: "description".obs),
    Grouplist1ItemModel(
        groupName: "Group name".obs, groupDescriptio: "description".obs),
    Grouplist1ItemModel(
        groupName: "Group name".obs, groupDescriptio: "description".obs),
    Grouplist1ItemModel(
        groupName: "Group name".obs, groupDescriptio: "description".obs)
  ]);
}
