import '../../../core/app_export.dart';
import '../controller/reporting_post_authenticated_user1_controller.dart';

/// A binding class for the ReportingPostAuthenticatedUser1Screen.
///
/// This class ensures that the ReportingPostAuthenticatedUser1Controller is created when the
/// ReportingPostAuthenticatedUser1Screen is first loaded.
class ReportingPostAuthenticatedUser1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportingPostAuthenticatedUser1Controller());
  }
}
