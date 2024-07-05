import '../../../core/app_export.dart';
import '../controller/daily_notification_sender_controller.dart';

/// A binding class for the DailyNotificationSenderScreen.
///
/// This class ensures that the DailyNotificationSenderController is created when the
/// DailyNotificationSenderScreen is first loaded.
class DailyNotificationSenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyNotificationSenderController());
  }
}
