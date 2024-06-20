import '../../../core/app_export.dart';
import '../controller/help_center_tab_container_controller.dart';

/// A binding class for the HelpCenterTabContainerScreen.
///
/// This class ensures that the HelpCenterTabContainerController is created when the
/// HelpCenterTabContainerScreen is first loaded.
class HelpCenterTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpCenterTabContainerController());
  }
}
