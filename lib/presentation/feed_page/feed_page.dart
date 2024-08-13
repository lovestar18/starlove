import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/feed_controller.dart';
import 'models/feed_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeedPage extends StatelessWidget {
  FeedPage({Key? key})
      : super(
          key: key,
        );

  FeedController controller = Get.put(FeedController(FeedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildPostSection(),
                        SizedBox(height: 20.v),
                        _buildMainContent()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            right: 28.h,
          ),
          child: Column(
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
                      child: _buildUserInfoTwo(
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
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Text(
                      "msg_look_my_collection".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 6.h),
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
                            child: _buildImageGalleryTwo(),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 6.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgHeartBlueGray900,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.bottomCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
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
                            margin: EdgeInsets.only(left: 20.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_24k_comments".tr,
                              style: CustomTextStyles.bodySmallBluegray90001,
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
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLikeCommentSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 12.h),
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
                  child: _buildImageGalleryTwo(),
                )
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
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
                      style: CustomTextStyles.bodySmallInterBluegray90001,
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
                      style: CustomTextStyles.bodySmallInterBluegray90001,
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
  Widget _buildMainContent() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Divider(
                color: appTheme.blueGray50,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 28.h,
            ),
            child: Column(
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
                        child: _buildUserInfoTwo(
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
                Text(
                  "msg_look_my_collection".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          _buildLikeCommentSection(),
          SizedBox(height: 20.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray50,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserInfoTwo({
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

  /// Common widget
  Widget _buildImageGalleryTwo() {
    return Column(
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
    );
  }
}
