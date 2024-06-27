import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../followers_page/followers_page.dart';
import '../controller/followers_tab_container_controller.dart';
import '../models/userprofilelist2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(this.userprofilelist2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  var controller = Get.find<FollowersTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFollowersTab(),
        SizedBox(
          height: 692.v,
          width: double.maxFinite,
          child: TabBarView(
            controller: controller.tabviewController,
            children: [FollowersPage(), FollowersPage()],
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
                      "lbl_followers2".tr,
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
                      "lbl_following".tr,
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
