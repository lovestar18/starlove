import '../../../core/app_export.dart';
import '../controller/reporting_post_five_controller.dart';

/// A binding class for the ReportingPostFiveScreen.
///
/// This class ensures that the ReportingPostFiveController is created when the
/// ReportingPostFiveScreen is first loaded.
class ReportingPostFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportingPostFiveController());
  }
}
