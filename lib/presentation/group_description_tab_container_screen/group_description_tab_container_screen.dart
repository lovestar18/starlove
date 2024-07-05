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
                theme.colorScheme.onErrorContainer.withOpacity(1),
                appTheme.gray10003
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
                  imagePath: ImageConstant.imgImage166x3741,
                  height: 166.v,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    82.h,
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowLeftBlueGray60001,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                            Text(
                              "msg_fullsnack_designers".tr,
                              style: CustomTextStyles
                                  .titleMediumOpenSansIndigo90002,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserBlueGray60001,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 46.v),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    style: CustomTextStyles
                                        .bodyMediumBluegray60001,
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
                        margin: EdgeInsets.symmetric(horizontal: 14.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgFrameBlueGray6000124x24,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "lbl_notifications".tr,
                                style: CustomTextStyles
                                    .bodyMediumInterBluegray60001,
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
                ),
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
              labelColor: appTheme.blueA400,
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
              indicatorColor: appTheme.blueA400,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmarkBlueGray60001,
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUpload,
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgReply,
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowUp,
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
