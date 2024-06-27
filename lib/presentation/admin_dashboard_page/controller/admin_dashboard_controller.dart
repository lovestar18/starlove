import '../../../core/app_export.dart';
import '../models/admin_dashboard_model.dart';

/// A controller class for the AdminDashboardPage.
///
/// This class manages the state of the AdminDashboardPage, including the
/// current adminDashboardModelObj
class AdminDashboardController extends GetxController {
  AdminDashboardController(this.adminDashboardModelObj);

  Rx<AdminDashboardModel> adminDashboardModelObj;
}
