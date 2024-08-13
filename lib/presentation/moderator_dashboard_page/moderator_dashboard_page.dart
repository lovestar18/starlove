import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/moderator_dashboard_controller.dart';
import 'models/moderator_dashboard_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ModeratorDashboardPage extends StatelessWidget {
  ModeratorDashboardPage({Key? key})
      : super(
          key: key,
        );

  ModeratorDashboardController controller =
      Get.put(ModeratorDashboardController(ModeratorDashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: _buildMainScrollView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10002,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: _buildAuthorInfoSecondary(
                    ralphedwards: "lbl_ralph_edwards".tr,
                    duration: "lbl_2_minutes".tr,
                  ),
                ),
                SizedBox(width: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.imgMore,
                  height: 4.v,
                  width: 20.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 10.v),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_look_my_collection".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 16.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle188,
                  height: 202.v,
                  width: 164.h,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(10.h),
                  ),
                ),
                SizedBox(width: 6.h),
                Expanded(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle189,
                        height: 98.v,
                        width: double.maxFinite,
                      ),
                      SizedBox(height: 6.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle190,
                        height: 98.v,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLike,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_24k_likes".tr,
                      style: CustomTextStyles.bodySmallBluegray90001,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMessageText,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(left: 24.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_24k_comments".tr,
                    style: CustomTextStyles.bodySmallInterBluegray90001,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionBlueGray90001,
                  height: 18.v,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 20.h),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_24k_stars".tr,
                      style: CustomTextStyles.bodySmallBluegray90001,
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

  /// Section Widget
  Widget _buildPostSectionSecondary() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10002,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: _buildAuthorInfoSecondary(
                    ralphedwards: "lbl_ralph_edwards".tr,
                    duration: "lbl_2_minutes".tr,
                  ),
                ),
                SizedBox(width: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.imgMore,
                  height: 4.v,
                  width: 20.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 10.v),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Text(
              "msg_look_my_collection".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 14.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle189,
            height: 98.v,
            width: 164.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainScrollView() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildPostSection(),
                SizedBox(height: 20.v),
                SizedBox(
                  height: 320.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                color: appTheme.blueGray50,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            _buildPostSectionSecondary()
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle188,
                        height: 202.v,
                        width: 164.h,
                        radius: BorderRadius.horizontal(
                          left: Radius.circular(10.h),
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle190,
                        height: 98.v,
                        width: 164.h,
                        margin: EdgeInsets.only(right: 20.h),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLike,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              alignment: Alignment.bottomCenter,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_24k_likes".tr,
                                  style: CustomTextStyles
                                      .bodySmallInterBluegray90001,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMessageText,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(left: 20.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_24k_comments".tr,
                                style: CustomTextStyles
                                    .bodySmallInterBluegray90001,
                              ),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgTelevisionBlueGray90001,
                              height: 18.v,
                              width: 16.h,
                              margin: EdgeInsets.only(left: 20.h),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_24k_stars".tr,
                                  style: CustomTextStyles
                                      .bodySmallInterBluegray90001,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.blueGray50,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAuthorInfoSecondary({
    required String ralphedwards,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ralphedwards,
          style: CustomTextStyles.bodyMedium_1.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          duration,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.blueGray30001,
          ),
        )
      ],
    );
  }
}
