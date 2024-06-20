import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/post_controller.dart'; // ignore_for_file: must_be_immutable

class PostScreen extends GetWidget<PostController> {
  const PostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 420.v,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildPostSection(),
              Container(
                height: 800.v,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(top: 4.v),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle1,
                              height: 32.adaptSize,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBackground,
                      height: 800.v,
                      width: double.maxFinite,
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
  Widget _buildPostSection() {
    return Container(
      margin: EdgeInsets.only(left: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_helena".tr,
                              style: CustomTextStyles.titleSmallSemiBold_1,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_3_min_ago".tr,
                              style: CustomTextStyles.bodySmallInterGray60003,
                            )
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconMore,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 298.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg_post_description".tr,
                  style: CustomTextStyles.bodyMediumInter,
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHeart,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_21_likes".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarOfDavidSolidBlack900,
                        height: 20.v,
                        width: 18.h,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_21_stars".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMessageSquare,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_4_comments".tr,
                          style: theme.textTheme.titleSmall,
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
