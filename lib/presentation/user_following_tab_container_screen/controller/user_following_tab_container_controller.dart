import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/user_following_tab_container_model.dart';

/// A controller class for the UserFollowingTabContainerScreen.
///
/// This class manages the state of the UserFollowingTabContainerScreen, including the
/// current userFollowingTabContainerModelObj
class UserFollowingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController whatshappeningController = TextEditingController();

  Rx<UserFollowingTabContainerModel> userFollowingTabContainerModelObj =
      UserFollowingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    whatshappeningController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in userFollowingTabContainerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    userFollowingTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
