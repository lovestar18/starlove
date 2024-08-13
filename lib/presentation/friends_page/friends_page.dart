import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/friends_controller.dart';
import 'models/friends_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FriendsPage extends StatelessWidget {
  FriendsPage({Key? key})
      : super(
          key: key,
        );

  FriendsController controller = Get.put(FriendsController(FriendsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          decoration: AppDecoration.mainwhite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildUserProfileList()],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller
              .friendsModelObj.value.userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = controller
                .friendsModelObj.value.userprofilelistItemList.value[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
