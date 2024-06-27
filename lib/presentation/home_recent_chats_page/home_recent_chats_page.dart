import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/home_recent_chats_controller.dart';
import 'models/home_recent_chats_model.dart';
import 'models/userprofilelist6_item_model.dart';
import 'widgets/userprofilelist6_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeRecentChatsPage extends StatelessWidget {
  HomeRecentChatsPage({Key? key})
      : super(
          key: key,
        );

  HomeRecentChatsController controller =
      Get.put(HomeRecentChatsController(HomeRecentChatsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 24.v,
          ),
          child: Column(
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
              height: 20.v,
            );
          },
          itemCount: controller.homeRecentChatsModelObj.value
              .userprofilelist6ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist6ItemModel model = controller.homeRecentChatsModelObj
                .value.userprofilelist6ItemList.value[index];
            return Userprofilelist6ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
