import '../../../core/app_export.dart';
import '../controller/grouppage_vtwo_controller.dart';

/// A binding class for the GrouppageVtwoScreen.
///
/// This class ensures that the GrouppageVtwoController is created when the
/// GrouppageVtwoScreen is first loaded.
class GrouppageVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GrouppageVtwoController());
  }
}
