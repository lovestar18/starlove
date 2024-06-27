import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/community_forums_response_controller.dart';
import 'models/community_forums_response_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityForumsResponsePage extends StatelessWidget {
  CommunityForumsResponsePage({Key? key})
      : super(
          key: key,
        );

  CommunityForumsResponseController controller = Get.put(
      CommunityForumsResponseController(CommunityForumsResponseModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppbar(),
        body: Padding(
          padding: EdgeInsets.only(top: 24.v),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildUserPost(),
                CustomTextFormField(
                  controller: controller.commentController,
                  hintText: "lbl_write_a_comment".tr,
                  hintStyle: CustomTextStyles.bodyLargeGray60002,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 10.v,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBiemojismile,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 42.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 14.h,
                    top: 10.v,
                    bottom: 10.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
                  fillColor: appTheme.gray5001,
                ),
                SizedBox(height: 34.v),
                _buildMediaComment(),
                SizedBox(height: 14.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 46.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPlay44x44,
                                  height: 44.adaptSize,
                                  width: double.maxFinite,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 2.h),
                                ),
                                SizedBox(height: 6.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorGray30001,
                                  height: 106.v,
                                  width: 24.h,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorGray30001126x24,
                                  height: 126.v,
                                  width: 24.h,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorGray30001260x24,
                                  height: 260.v,
                                  width: 24.h,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 6.h),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildCommentHeader(),
                                  SizedBox(height: 6.v),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      "msg_dolor_sit_ameteiusmod".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          CustomTextStyles.bodyLarge16.copyWith(
                                        height: 1.44,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  _buildCommentLikes(),
                                  SizedBox(height: 42.v),
                                  Container(
                                    width: 170.h,
                                    margin: EdgeInsets.only(left: 54.h),
                                    child: Text(
                                      "msg_dolor_sit_ameteiusmod2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          CustomTextStyles.bodyLarge16.copyWith(
                                        height: 1.44,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 54.h),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFavorite,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text(
                                            "lbl_18".tr,
                                            style: CustomTextStyles
                                                .titleMediumMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text(
                                            "lbl_reply".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoGray60002,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 14.v),
                                  _buildMediaStack(),
                                  SizedBox(height: 14.v),
                                  _buildCommentBody()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      centerTitle: true,
      title: Container(
        width: double.maxFinite,
        decoration: AppDecoration.gradientIndigoAToCyan400011,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 17.v),
            AppbarSubtitleThree(
              text: "msg_community_forums".tr,
              margin: EdgeInsets.only(
                left: 91.h,
                right: 94.h,
              ),
            ),
            SizedBox(height: 14.v)
          ],
        ),
      ),
      styleType:
          Style.bgGradientnameindigoA70001opacity04namecyan40001opacity04,
    );
  }

  /// Section Widget
  Widget _buildUserPost() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar2,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_robert_fox".tr,
                          style: CustomTextStyles.titleLargeRoboto,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_robertfox2".tr,
                          style: CustomTextStyles.bodyMediumRobotoBluegray40001,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_minim_dolor_in_amet".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineMedium!.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_september_23_2021".tr,
            style: CustomTextStyles.bodyLargeGray60003,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_minim_dolor_in_amet2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLarge17.copyWith(
                height: 1.42,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteBlack9003,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              "lbl_20k".tr,
                              style: CustomTextStyles.titleMediumMedium16,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCommentBlack900,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                              margin: EdgeInsets.only(left: 22.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_567".tr,
                                style: CustomTextStyles.titleMediumMedium16,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay44x44,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_esther_howard".tr,
                          style: CustomTextStyles.titleMediumMedium,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "lbl_25_minutes_ago".tr,
                              style: CustomTextStyles.bodyMediumRobotoGray60002,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_lorem_ipsum_dolor".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLarge16.copyWith(
                      height: 1.44,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteBlack9001,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_18".tr,
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "lbl_reply".tr,
                              style: CustomTextStyles.bodyMediumRobotoGray60002,
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
    );
  }

  /// Section Widget
  Widget _buildMediaComment() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [_buildCommentSection()],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentHeader() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "lbl_jerome_bell".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_3_minutes_ago".tr,
                style: CustomTextStyles.bodyMediumRobotoGray60002,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentLikes() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 28.adaptSize,
            width: 28.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_18".tr,
              style: CustomTextStyles.titleMediumMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMediaStack() {
    return SizedBox(
      height: 244.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlay44x44,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildCommentInfo(
                            username: "lbl_kristin_watson".tr,
                            duration: "lbl_12_minutes_ago".tr,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "msg_dolor_sit_ameteiusmod2".tr,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLarge16.copyWith(
                            height: 1.44,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildCommentInteractions(
                            eighteenFive: "lbl_18".tr,
                            replyFour: "lbl_reply".tr,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay44x44,
                height: 38.adaptSize,
                width: 38.adaptSize,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 214.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "lbl_jacob_jones".tr,
                              style: CustomTextStyles.titleMediumMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_1_minutes_ago".tr,
                                style:
                                    CustomTextStyles.bodyMediumRobotoGray60002,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "msg_dolor_sit_ameteiusmod3".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge16.copyWith(
                          height: 1.44,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFavoriteBlack9003,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "lbl_18".tr,
                                style: CustomTextStyles.titleMediumMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_reply".tr,
                                style:
                                    CustomTextStyles.bodyMediumRobotoGray60002,
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
          CustomImageView(
            imagePath: ImageConstant.imgVectorGray30001102x24,
            height: 102.v,
            width: 24.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 50.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentBody() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay44x44,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildCommentInfo(
                      username: "lbl_ronald_richards".tr,
                      duration: "lbl_15_minutes_ago".tr,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "msg_dolor_sit_ameteiusmod4".tr,
                    style: CustomTextStyles.bodyLarge16,
                  ),
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashXbrqfr2bqni,
                    height: 142.v,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildCommentInteractions(
                      eighteenFive: "lbl_18".tr,
                      replyFour: "lbl_reply".tr,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCommentInfo({
    required String username,
    required String duration,
  }) {
    return Row(
      children: [
        Text(
          username,
          style: CustomTextStyles.titleMediumMedium.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            duration,
            style: CustomTextStyles.bodyMediumRobotoGray60002.copyWith(
              color: appTheme.gray60002,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildCommentInteractions({
    required String eighteenFive,
    required String replyFour,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteBlack9001,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            eighteenFive,
            style: CustomTextStyles.titleMediumMedium.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            replyFour,
            style: CustomTextStyles.bodyMediumRobotoGray60002.copyWith(
              color: appTheme.gray60002,
            ),
          ),
        )
      ],
    );
  }
}
