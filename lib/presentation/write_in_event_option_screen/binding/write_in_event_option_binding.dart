import '../../../core/app_export.dart';
import '../controller/write_in_event_option_controller.dart';

/// A binding class for the WriteInEventOptionScreen.
///
/// This class ensures that the WriteInEventOptionController is created when the
/// WriteInEventOptionScreen is first loaded.
class WriteInEventOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteInEventOptionController());
  }
}
