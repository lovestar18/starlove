import '../../../core/app_export.dart';
import '../controller/edit_group_details_controller.dart';

/// A binding class for the EditGroupDetailsScreen.
///
/// This class ensures that the EditGroupDetailsController is created when the
/// EditGroupDetailsScreen is first loaded.
class EditGroupDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditGroupDetailsController());
  }
}
