import '../../../core/app_export.dart';
import '../controller/report_user_controller.dart';

/// A binding class for the ReportUserScreen.
///
/// This class ensures that the ReportUserController is created when the
/// ReportUserScreen is first loaded.
class ReportUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportUserController());
  }
}
