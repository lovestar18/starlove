import '../../../core/app_export.dart';
import '../controller/discover_groups_controller.dart';

/// A binding class for the DiscoverGroupsScreen.
///
/// This class ensures that the DiscoverGroupsController is created when the
/// DiscoverGroupsScreen is first loaded.
class DiscoverGroupsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverGroupsController());
  }
}
