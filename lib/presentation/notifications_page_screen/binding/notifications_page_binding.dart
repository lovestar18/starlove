import '../../../core/app_export.dart';
import '../controller/notifications_page_controller.dart';

/// A binding class for the NotificationsPageScreen.
///
/// This class ensures that the NotificationsPageController is created when the
/// NotificationsPageScreen is first loaded.
class NotificationsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsPageController());
  }
}
