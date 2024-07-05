import '../../../core/app_export.dart';
import '../controller/blocking_nine_controller.dart';

/// A binding class for the BlockingNineScreen.
///
/// This class ensures that the BlockingNineController is created when the
/// BlockingNineScreen is first loaded.
class BlockingNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlockingNineController());
  }
}
