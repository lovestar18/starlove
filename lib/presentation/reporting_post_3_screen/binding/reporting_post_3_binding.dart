import '../../../core/app_export.dart';
import '../controller/reporting_post_3_controller.dart';

/// A binding class for the ReportingPost3Screen.
///
/// This class ensures that the ReportingPost3Controller is created when the
/// ReportingPost3Screen is first loaded.
class ReportingPost3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportingPost3Controller());
  }
}
