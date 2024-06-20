import '../../../core/app_export.dart';
import '../controller/write_in_group_options_controller.dart';

/// A binding class for the WriteInGroupOptionsScreen.
///
/// This class ensures that the WriteInGroupOptionsController is created when the
/// WriteInGroupOptionsScreen is first loaded.
class WriteInGroupOptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteInGroupOptionsController());
  }
}
