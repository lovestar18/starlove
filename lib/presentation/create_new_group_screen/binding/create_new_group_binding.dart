import '../../../core/app_export.dart';
import '../controller/create_new_group_controller.dart';

/// A binding class for the CreateNewGroupScreen.
///
/// This class ensures that the CreateNewGroupController is created when the
/// CreateNewGroupScreen is first loaded.
class CreateNewGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewGroupController());
  }
}
