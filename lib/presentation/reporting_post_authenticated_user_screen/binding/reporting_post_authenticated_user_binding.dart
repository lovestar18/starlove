import '../../../core/app_export.dart';
import '../controller/reporting_post_authenticated_user_controller.dart';

/// A binding class for the ReportingPostAuthenticatedUserScreen.
///
/// This class ensures that the ReportingPostAuthenticatedUserController is created when the
/// ReportingPostAuthenticatedUserScreen is first loaded.
class ReportingPostAuthenticatedUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportingPostAuthenticatedUserController());
  }
}
