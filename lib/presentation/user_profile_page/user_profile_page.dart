import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/user_profile_controller.dart';
import 'models/user_profile_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserProfilePage extends StatelessWidget {
  UserProfilePage({Key? key})
      : super(
          key: key,
        );

  UserProfileController controller =
      Get.put(UserProfileController(UserProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 4.h),
                    child: Column(
                      children: [
                        _buildUserInfo(),
                        SizedBox(height: 16.v),
                        _buildActionsButtons(),
                        SizedBox(height: 14.v),
                        _buildPostHeader(),
                        SizedBox(height: 14.v),
                        _buildPostContent(),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 36.h),
                            child: Text(
                              "msg_post_description".tr,
                              style: CustomTextStyles.bodyMediumInter,
                            ),
                          ),
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPostActionsTwo(
                            likesCounter: "lbl_21_likes".tr,
                            starsCounter: "lbl_21_stars".tr,
                            commentsCounter: "lbl_4_comments".tr,
                          ),
                        ),
                        SizedBox(height: 34.v),
                        _buildPostHeaderTwo(),
                        SizedBox(height: 14.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage,
                          height: 298.adaptSize,
                          width: 298.adaptSize,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 6.h),
                        ),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 36.h),
                            child: Text(
                              "msg_post_description".tr,
                              style: CustomTextStyles.bodyMediumInter,
                            ),
                          ),
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPostActionsTwo(
                            likesCounter: "lbl_21_likes".tr,
                            starsCounter: "lbl_21_stars".tr,
                            commentsCounter: "lbl_4_comments".tr,
                          ),
                        )
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
  Widget _buildUserInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_write_on_jill_s".tr,
              style: CustomTextStyles.bodyLargeInterBluegray600,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionsButtons() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageBlueGray600,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGif,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEmoji,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 72.h,
            text: "lbl_post".tr,
            buttonStyle: CustomButtonStyles.fillBlueATL18,
            buttonTextStyle: CustomTextStyles.titleMediumInterOnErrorContainer,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostHeader() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_helena".tr,
                  style: CustomTextStyles.titleSmallSemiBold_1,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_3_min_ago".tr,
                  style: CustomTextStyles.bodySmallInterGray60003,
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgIconMore,
            height: 24.adaptSize,
            width: 24.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostContent() {
    return Container(
      height: 298.v,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          IntrinsicHeight(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 194.h,
                margin: EdgeInsets.only(top: 26.v),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImages11,
                      height: 24.v,
                      width: 16.h,
                    ),
                    Container(
                      height: 10.v,
                      width: 6.h,
                      margin: EdgeInsets.only(left: 16.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(1, 1),
                          end: Alignment(0, 0),
                          colors: [appTheme.indigoA100, appTheme.indigo500],
                        ),
                      ),
                    ),
                    Container(
                      height: 10.v,
                      width: 6.h,
                      margin: EdgeInsets.only(left: 56.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(1, 1),
                          end: Alignment(0, 0),
                          colors: [appTheme.indigoA100, appTheme.indigo500],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 6.h,
                        margin: EdgeInsets.only(
                          left: 54.h,
                          top: 4.v,
                        ),
                        decoration:
                            AppDecoration.gradientIndigoAToIndigo.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.maxFinite,
                              decoration: AppDecoration.gradientIndigoAToIndigo
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 10.v,
                                    width: 6.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(1, 1),
                                        end: Alignment(0, 0),
                                        colors: [
                                          appTheme.indigoA100,
                                          appTheme.indigo500
                                        ],
                                      ),
                                    ),
                                  )
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
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 298.adaptSize,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              4.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostHeaderTwo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 10.h),
      child: Row(
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_helena".tr,
                  style: CustomTextStyles.titleSmallSemiBold_1,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_3_min_ago".tr,
                  style: CustomTextStyles.bodySmallInterGray60003,
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgUnionBlack900,
            height: 3.v,
            width: 14.h,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPostActionsTwo({
    required String likesCounter,
    required String starsCounter,
    required String commentsCounter,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteBlack90028x28,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            likesCounter,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 20.v,
          width: 16.h,
          margin: EdgeInsets.only(left: 16.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            starsCounter,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
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
            commentsCounter,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }
}
