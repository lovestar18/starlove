import '../../../core/app_export.dart';
import '../controller/stickers_controller.dart';

/// A binding class for the StickersScreen.
///
/// This class ensures that the StickersController is created when the
/// StickersScreen is first loaded.
class StickersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StickersController());
  }
}
