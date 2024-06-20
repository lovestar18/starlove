import '../../../core/app_export.dart';
import '../controller/listofgroupmembers_controller.dart';

/// A binding class for the ListofgroupmembersScreen.
///
/// This class ensures that the ListofgroupmembersController is created when the
/// ListofgroupmembersScreen is first loaded.
class ListofgroupmembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListofgroupmembersController());
  }
}
