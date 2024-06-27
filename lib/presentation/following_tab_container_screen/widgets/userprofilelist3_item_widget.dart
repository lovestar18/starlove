import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../following_page/following_page.dart';
import '../controller/following_tab_container_controller.dart';
import '../models/userprofilelist3_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  Userprofilelist3ItemWidget(this.userprofilelist3ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist3ItemModel userprofilelist3ItemModelObj;

  var controller = Get.find<FollowingTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFollowersTab(),
        SizedBox(
          height: 694.v,
          width: double.maxFinite,
          child: TabBarView(
            controller: controller.tabviewController,
            children: [FollowingPage(), FollowingPage()],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildFollowersTab() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 46.h),
      child: Column(
        children: [
          Container(
            height: 34.v,
            decoration: BoxDecoration(
              color: appTheme.black900,
              borderRadius: BorderRadius.circular(
                16.h,
              ),
              border: Border.all(
                color: appTheme.gray40001,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary.withOpacity(1),
              labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
              ),
              indicatorPadding: EdgeInsets.all(
                6.0.h,
              ),
              indicator: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
              dividerHeight: 0.0,
              tabs: [
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 2.v,
                    ),
                    child: Text(
                      "lbl_followers".tr,
                    ),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 2.v,
                    ),
                    child: Text(
                      "lbl_following2".tr,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
