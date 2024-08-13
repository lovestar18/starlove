import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/user_following_controller.dart';
import 'models/user_following_model.dart';
import 'models/userfollowinglist_item_model.dart';
import 'widgets/userfollowinglist_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserFollowingPage extends StatelessWidget {
  UserFollowingPage({Key? key})
      : super(
          key: key,
        );

  UserFollowingController controller =
      Get.put(UserFollowingController(UserFollowingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [SizedBox(height: 18.v), _buildUserFollowingList()],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserFollowingList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.userFollowingModelObj.value
              .userfollowinglistItemList.value.length,
          itemBuilder: (context, index) {
            UserfollowinglistItemModel model = controller.userFollowingModelObj
                .value.userfollowinglistItemList.value[index];
            return UserfollowinglistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
