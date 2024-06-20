import '../../../core/app_export.dart';
import '../models/moderator_dashboard_model.dart';

/// A controller class for the ModeratorDashboardScreen.
///
/// This class manages the state of the ModeratorDashboardScreen, including the
/// current moderatorDashboardModelObj
class ModeratorDashboardController extends GetxController {
  Rx<ModeratorDashboardModel> moderatorDashboardModelObj =
      ModeratorDashboardModel().obs;
}
