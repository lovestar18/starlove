import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/admin_dashboard_controller.dart';
import 'models/admin_dashboard_model.dart';
import 'models/grouplist1_item_model.dart';
import 'widgets/grouplist1_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminDashboardPage extends StatelessWidget {
  AdminDashboardPage({Key? key})
      : super(
          key: key,
        );

  AdminDashboardController controller =
      Get.put(AdminDashboardController(AdminDashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: AppDecoration.mainwhite,
          child: Column(
            children: [SizedBox(height: 14.v), _buildGroupList()],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: controller
              .adminDashboardModelObj.value.grouplist1ItemList.value.length,
          itemBuilder: (context, index) {
            Grouplist1ItemModel model = controller
                .adminDashboardModelObj.value.grouplist1ItemList.value[index];
            return Grouplist1ItemWidget(
              model,
              onTapView: () {
                onTapView();
              },
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the grouppageV2Screen when the action is triggered.
  onTapView() {
    Get.toNamed(
      AppRoutes.grouppageV2Screen,
    );
  }
}
