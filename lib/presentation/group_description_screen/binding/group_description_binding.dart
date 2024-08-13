import '../../../core/app_export.dart';
import '../controller/group_description_controller.dart';

/// A binding class for the GroupDescriptionScreen.
///
/// This class ensures that the GroupDescriptionController is created when the
/// GroupDescriptionScreen is first loaded.
class GroupDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupDescriptionController());
  }
}
