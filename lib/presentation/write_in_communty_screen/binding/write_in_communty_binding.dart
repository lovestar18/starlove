import '../../../core/app_export.dart';
import '../controller/write_in_communty_controller.dart';

/// A binding class for the WriteInCommuntyScreen.
///
/// This class ensures that the WriteInCommuntyController is created when the
/// WriteInCommuntyScreen is first loaded.
class WriteInCommuntyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteInCommuntyController());
  }
}
