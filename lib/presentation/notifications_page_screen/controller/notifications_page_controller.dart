import '../../../core/app_export.dart';
import '../models/notifications_page_model.dart';

/// A controller class for the NotificationsPageScreen.
///
/// This class manages the state of the NotificationsPageScreen, including the
/// current notificationsPageModelObj
class NotificationsPageController extends GetxController {
  Rx<NotificationsPageModel> notificationsPageModelObj =
      NotificationsPageModel().obs;
}
