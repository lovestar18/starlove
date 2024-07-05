import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../following_page/following_page.dart';
import '../controller/following_tab_container_controller.dart';
import '../models/userprofilelist2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(this.userprofilelist2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  var controller = Get.find<FollowingTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 34.v,
          margin: EdgeInsets.symmetric(horizontal: 58.h),
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
            labelColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            labelStyle: TextStyle(
              fontSize: 14.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelColor:
                theme.colorScheme.onErrorContainer.withOpacity(1),
            unselectedLabelStyle: TextStyle(
              fontSize: 14.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
            indicatorPadding: EdgeInsets.all(
              6.0.h,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0, 0.5),
                end: Alignment(1, 0.5),
                colors: [
                  theme.colorScheme.onPrimaryContainer,
                  appTheme.purple900
                ],
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
        ),
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
}
