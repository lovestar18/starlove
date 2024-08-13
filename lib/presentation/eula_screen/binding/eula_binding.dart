import '../../../core/app_export.dart';
import '../controller/eula_controller.dart';

/// A binding class for the EulaScreen.
///
/// This class ensures that the EulaController is created when the
/// EulaScreen is first loaded.
class EulaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EulaController());
  }
}
