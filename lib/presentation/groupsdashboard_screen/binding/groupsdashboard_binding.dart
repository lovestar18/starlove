import '../../../core/app_export.dart';
import '../controller/groupsdashboard_controller.dart';

/// A binding class for the GroupsdashboardScreen.
///
/// This class ensures that the GroupsdashboardController is created when the
/// GroupsdashboardScreen is first loaded.
class GroupsdashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupsdashboardController());
  }
}
