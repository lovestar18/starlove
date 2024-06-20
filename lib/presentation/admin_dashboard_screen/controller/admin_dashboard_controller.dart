import '../../../core/app_export.dart';
import '../models/admin_dashboard_model.dart';

/// A controller class for the AdminDashboardScreen.
///
/// This class manages the state of the AdminDashboardScreen, including the
/// current adminDashboardModelObj
class AdminDashboardController extends GetxController {
  Rx<AdminDashboardModel> adminDashboardModelObj = AdminDashboardModel().obs;
}
