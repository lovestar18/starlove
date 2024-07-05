import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/blocking_nine_model.dart';

/// A controller class for the BlockingNineScreen.
///
/// This class manages the state of the BlockingNineScreen, including the
/// current blockingNineModelObj
class BlockingNineController extends GetxController {
  TextEditingController profilelinkoneController = TextEditingController();

  TextEditingController mutenotificatioController = TextEditingController();

  TextEditingController unblockvalueController = TextEditingController();

  Rx<BlockingNineModel> blockingNineModelObj = BlockingNineModel().obs;

  @override
  void onClose() {
    super.onClose();
    profilelinkoneController.dispose();
    mutenotificatioController.dispose();
    unblockvalueController.dispose();
  }
}
