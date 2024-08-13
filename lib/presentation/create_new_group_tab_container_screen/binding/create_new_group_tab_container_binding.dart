import '../../../core/app_export.dart';
import '../controller/create_new_group_tab_container_controller.dart';

/// A binding class for the CreateNewGroupTabContainerScreen.
///
/// This class ensures that the CreateNewGroupTabContainerController is created when the
/// CreateNewGroupTabContainerScreen is first loaded.
class CreateNewGroupTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewGroupTabContainerController());
  }
}
