import '../../../core/app_export.dart';
import '../controller/report_moderator_controller.dart';

/// A binding class for the ReportModeratorScreen.
///
/// This class ensures that the ReportModeratorController is created when the
/// ReportModeratorScreen is first loaded.
class ReportModeratorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportModeratorController());
  }
}
