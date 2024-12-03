import '../../../core/app_export.dart';
import '../models/groupsdashboard_model.dart';

/// A controller class for the GroupsdashboardScreen.
///
/// This class manages the state of the GroupsdashboardScreen, including the
/// current groupsdashboardModelObj
class GroupsdashboardController extends GetxController {
  Rx<GroupsdashboardModel> groupsdashboardModelObj = GroupsdashboardModel().obs;
}
