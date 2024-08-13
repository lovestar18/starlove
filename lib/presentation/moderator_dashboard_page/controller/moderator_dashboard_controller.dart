import '../../../core/app_export.dart';
import '../models/moderator_dashboard_model.dart';

/// A controller class for the ModeratorDashboardPage.
///
/// This class manages the state of the ModeratorDashboardPage, including the
/// current moderatorDashboardModelObj
class ModeratorDashboardController extends GetxController {
  ModeratorDashboardController(this.moderatorDashboardModelObj);

  Rx<ModeratorDashboardModel> moderatorDashboardModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.grouppageVtwoScreen,
    );
    Get.toNamed(
      AppRoutes.grouppageVtwoScreen,
    );
  }
}
