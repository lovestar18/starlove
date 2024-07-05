import '../../../core/app_export.dart';
import '../models/admin_dashboard_member_view_container_model.dart';

/// A controller class for the AdminDashboardMemberViewContainerScreen.
///
/// This class manages the state of the AdminDashboardMemberViewContainerScreen, including the
/// current adminDashboardMemberViewContainerModelObj
class AdminDashboardMemberViewContainerController extends GetxController {
  Rx<AdminDashboardMemberViewContainerModel>
      adminDashboardMemberViewContainerModelObj =
      AdminDashboardMemberViewContainerModel().obs;
}
