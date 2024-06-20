import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/blocking_3_controller.dart'; // ignore_for_file: must_be_immutable

class Blocking3Screen extends GetWidget<Blocking3Controller> {
  const Blocking3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 16.v),
              decoration: AppDecoration.white,
              child: Column(
                children: [
                  CustomAppBar(
                    height: 24.v,
                    leadingWidth: 36.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgUnion,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      onTap: () {
                        onTapUnionone();
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 72.adaptSize,
                          width: 72.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.gray10007,
                            borderRadius: BorderRadius.circular(
                              36.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 14.h),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_jeremy_dough".tr,
                                  style: CustomTextStyles
                                      .headlineSmallOpenSansBlack900,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "msg_justjeremydough".tr,
                                  style: CustomTextStyles.bodyLargeBlack900,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSlashBlock,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "msg_you_blocked_this".tr,
                            style: CustomTextStyles
                                .titleMediumOpenSansBlack900SemiBold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildMuteNotificationsSection(
                      userImage: ImageConstant.imgUserBlueGray8000224x24,
                      muteNotificationsText: "lbl_see_profile".tr,
                      onTapMuteNotificationsSection: () {
                        onTapProfileSection();
                      },
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildMuteNotificationsSection(
                      userImage: ImageConstant.imgUserBlueGray80002,
                      muteNotificationsText: "msg_mute_notifications".tr,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildMuteNotificationsSection(
                      userImage: ImageConstant.imgSlashBlockBlueGray80002,
                      muteNotificationsText: "lbl_unblock".tr,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildMuteNotificationsSection(
                      userImage: ImageConstant.imgWarningSquare,
                      muteNotificationsText: "lbl_report".tr,
                      onTapMuteNotificationsSection: () {
                        onTapReportSection();
                      },
                    ),
                  ),
                  SizedBox(height: 250.v)
                ],
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMuteNotificationsSection({
    required String userImage,
    required String muteNotificationsText,
    Function? onTapMuteNotificationsSection,
  }) {
    return GestureDetector(
      onTap: () {
        onTapMuteNotificationsSection?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.greyscaleGrey80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: userImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 6.v,
              ),
              child: Text(
                muteNotificationsText,
                style: CustomTextStyles.bodyLargeBluegray80002.copyWith(
                  color: appTheme.blueGray80002,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapUnionone() {
    Get.back();
  }

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapProfileSection() {
    Get.toNamed(
      AppRoutes.userProfileScreen,
    );
  }

  /// Navigates to the reportingPost3Screen when the action is triggered.
  onTapReportSection() {
    Get.toNamed(
      AppRoutes.reportingPost3Screen,
    );
  }
}
