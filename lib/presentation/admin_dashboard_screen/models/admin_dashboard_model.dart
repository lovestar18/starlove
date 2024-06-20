import '../../../core/app_export.dart';
import 'medialist_item_model.dart';
import 'statisticslist_item_model.dart';

/// This class defines the variables used in the [admin_dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminDashboardModel {
  Rx<List<StatisticslistItemModel>> statisticslistItemList = Rx([
    StatisticslistItemModel(dynamicText: "22".obs, dynamicText1: "Members".obs),
    StatisticslistItemModel(
        dynamicText: "7".obs, dynamicText1: "Pending Applications".obs)
  ]);

  Rx<List<MedialistItemModel>> medialistItemList = Rx([
    MedialistItemModel(
        members: "Members".obs, pending: "Pending Application".obs),
    MedialistItemModel(),
    MedialistItemModel(),
    MedialistItemModel(),
    MedialistItemModel(),
    MedialistItemModel()
  ]);
}
