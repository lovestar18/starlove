import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/daily_notification_sender_model.dart';

/// A controller class for the DailyNotificationSenderScreen.
///
/// This class manages the state of the DailyNotificationSenderScreen, including the
/// current dailyNotificationSenderModelObj
class DailyNotificationSenderController extends GetxController {
  TextEditingController yournamegmailcoController = TextEditingController();

  TextEditingController xoxovalueoneController = TextEditingController();

  TextEditingController xoxovaluethreeController = TextEditingController();

  Rx<DailyNotificationSenderModel> dailyNotificationSenderModelObj =
      DailyNotificationSenderModel().obs;

  @override
  void onClose() {
    super.onClose();
    yournamegmailcoController.dispose();
    xoxovalueoneController.dispose();
    xoxovaluethreeController.dispose();
  }
}
