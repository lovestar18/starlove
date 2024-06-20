import '../../../core/app_export.dart';
import '../controller/write_in_group_controller.dart';

/// A binding class for the WriteInGroupScreen.
///
/// This class ensures that the WriteInGroupController is created when the
/// WriteInGroupScreen is first loaded.
class WriteInGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteInGroupController());
  }
}
