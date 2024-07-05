import '../../../core/app_export.dart';
import '../controller/reporting_post_eight_controller.dart';

/// A binding class for the ReportingPostEightScreen.
///
/// This class ensures that the ReportingPostEightController is created when the
/// ReportingPostEightScreen is first loaded.
class ReportingPostEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportingPostEightController());
  }
}
