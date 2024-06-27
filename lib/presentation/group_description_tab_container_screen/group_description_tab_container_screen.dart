import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_switch.dart';
import '../group_description_page/group_description_page.dart';
import 'controller/group_description_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class GroupDescriptionTabContainerScreen
    extends GetWidget<GroupDescriptionTabContainerController> {
  const GroupDescriptionTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary.withOpacity(1),
                appTheme.gray10004
              ],
            ),
          ),
          child: SizedBox(
            width: 374.h,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSignalColumn(),
                        SizedBox(
                          height: 1192.v,
                          width: double.maxFinite,
                          child: TabBarView(
                            controller: controller.tabviewController,
                            children: [
                              GroupDescriptionPage(),
                              GroupDescriptionPage(),
                              GroupDescriptionPage(),
                              GroupDescriptionPage(),
                              GroupDescriptionPage()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftBlueGray600011,
            height: 24.adaptSize,
            width: 24.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Text(
            "msg_fullsnack_designers".tr,
            style: CustomTextStyles.titleMediumOpenSansIndigo90002,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserBlueGray600011,
            height: 24.adaptSize,
            width: 24.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          _buildNavigationRow(),
          SizedBox(height: 46.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlueGray60001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_we_are_fullsnack".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBluegray60001,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 28.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlueGray6000124x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_notifications".tr,
                    style: CustomTextStyles.bodyMediumInterBluegray60001,
                  ),
                ),
                Spacer(),
                Obx(
                  () => CustomSwitch(
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignalColumn() {
    return SizedBox(
      width: 374.h,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage166x374,
                  height: 166.v,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    82.h,
                  ),
                ),
                SizedBox(height: 18.v),
                _buildInfoColumn(),
                SizedBox(height: 24.v)
              ],
            ),
          ),
          SizedBox(
            height: 40.v,
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              isScrollable: true,
              labelColor: appTheme.blueA40001,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.blueGray60001,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              indicatorColor: appTheme.blueA40001,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalBlueA40001,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.only(
                          topLeft: Radius.circular(8.h),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_bookmarks".tr,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Opacity(
                    opacity: 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmarkBlueGray600011,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(8.h),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_images".tr,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Opacity(
                    opacity: 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUploadBlueGray60001,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(8.h),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_videos".tr,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgReplyBlueGray60001,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.only(
                          topLeft: Radius.circular(8.h),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_documents".tr,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowUpBlueGray60001,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.only(
                          topLeft: Radius.circular(8.h),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_shared_links".tr,
                        ),
                      )
                    ],
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
