import '../../../core/app_export.dart';
import '../controller/reporting_post_5_controller.dart';

/// A binding class for the ReportingPost5Screen.
///
/// This class ensures that the ReportingPost5Controller is created when the
/// ReportingPost5Screen is first loaded.
class ReportingPost5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportingPost5Controller());
  }
}
