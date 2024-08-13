import '../../../core/app_export.dart';
import 'listgeneralnoti_item_model.dart';

/// This class defines the variables used in the [notification_settings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificationSettingsModel {
  Rx<List<ListgeneralnotiItemModel>> listgeneralnotiItemList = Rx([
    ListgeneralnotiItemModel(generalNotifica: "General Notifications".obs),
    ListgeneralnotiItemModel(generalNotifica: "Chat Notifications".obs),
    ListgeneralnotiItemModel(generalNotifica: "Group Notifications".obs)
  ]);
}
