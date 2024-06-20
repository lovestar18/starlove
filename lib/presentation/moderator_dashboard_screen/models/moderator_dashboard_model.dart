import '../../../core/app_export.dart';
import 'listtwentytwote_item_model.dart';

/// This class defines the variables used in the [moderator_dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ModeratorDashboardModel {
  Rx<List<ListtwentytwoteItemModel>> listtwentytwoteItemList = Rx([
    ListtwentytwoteItemModel(
        twentyTwoText: "22".obs,
        membersText: "Members".obs,
        image: ImageConstant.imgPeople160x60.obs),
    ListtwentytwoteItemModel()
  ]);
}
