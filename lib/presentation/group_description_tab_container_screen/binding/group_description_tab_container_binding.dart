import '../../../core/app_export.dart';
import '../controller/group_description_tab_container_controller.dart';

/// A binding class for the GroupDescriptionTabContainerScreen.
///
/// This class ensures that the GroupDescriptionTabContainerController is created when the
/// GroupDescriptionTabContainerScreen is first loaded.
class GroupDescriptionTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupDescriptionTabContainerController());
  }
}
