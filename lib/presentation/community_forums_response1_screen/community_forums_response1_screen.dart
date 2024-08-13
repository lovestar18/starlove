import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/community_forums_response1_controller.dart'; // ignore_for_file: must_be_immutable

class CommunityForumsResponse1Screen
    extends GetWidget<CommunityForumsResponse1Controller> {
  const CommunityForumsResponse1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPostSection(),
              SizedBox(height: 16.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: appTheme.blueGray50,
                  indent: 4.h,
                ),
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        _buildCommentSection(),
                        SizedBox(height: 14.v),
                        _buildCommentSection1(),
                        SizedBox(height: 34.v),
                        _buildCommentSection2()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildCommentInput(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScrollSection() {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Container(
            height: 372.v,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Row(
                            children: [
                              Container(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    30.h,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgAvatar2,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.h),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_robert_fox".tr,
                                      style: CustomTextStyles
                                          .titleLargeRobotoBlack900,
                                    ),
                                    SizedBox(height: 8.v),
                                    Text(
                                      "lbl_robertfox2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumRobotoBluegray400,
                                    ),
                                    SizedBox(height: 2.v)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Container(
                          width: 262.h,
                          margin: EdgeInsets.only(left: 14.h),
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
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "msg_september_23_2021".tr,
                            style: CustomTextStyles.bodyLargeRobotoGray60003,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: 290.h,
                          margin: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "msg_minim_dolor_in_amet2".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargeRobotoBlack900
                                .copyWith(
                              height: 1.42,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                constraints: BoxConstraints(
                                  minHeight: 40.adaptSize,
                                  minWidth: 40.adaptSize,
                                ),
                                padding: EdgeInsets.all(0),
                                icon: Container(
                                  width: 40.adaptSize,
                                  height: 40.adaptSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      20.h,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_20k".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 52.v,
                                    margin: EdgeInsets.only(top: 12.v),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 50.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  constraints: BoxConstraints(
                                                    minHeight: 40.adaptSize,
                                                    minWidth: 40.adaptSize,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                  icon: Container(
                                                    width: 40.adaptSize,
                                                    height: 40.adaptSize,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        20.h,
                                                      ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.all(8.h),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imageNotFound,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h),
                                                  child: Text(
                                                    "lbl_34".tr,
                                                    style: theme
                                                        .textTheme.titleMedium,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  constraints: BoxConstraints(
                                                    minHeight: 40.adaptSize,
                                                    minWidth: 40.adaptSize,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                  icon: Container(
                                                    width: 40.adaptSize,
                                                    height: 40.adaptSize,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        20.h,
                                                      ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.all(10.h),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgUserBlack90040x40,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h),
                                                  child: Text(
                                                    "lbl_567".tr,
                                                    style: theme
                                                        .textTheme.titleMedium,
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
                        )
                      ],
                    ),
                  ),
                ),
                IntrinsicHeight(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 1.h,
                      padding: EdgeInsets.symmetric(vertical: 10.v),
                      decoration: AppDecoration.fillGray5002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 282.h,
                            child: TextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.commentController,
                              style: CustomTextStyles.bodyLargeRobotoGray60002,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "lbl_write_a_comment".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeRobotoGray60002,
                                border: InputBorder.none,
                                isDense: true,
                              ),
                            ),
                          ),
                          Container(
                            height: 20.v,
                            width: 34.h,
                            padding: EdgeInsets.only(right: 2.h),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgContrastBlueGray90007,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.centerRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 8.v,
                                  width: 10.h,
                                  margin: EdgeInsets.only(
                                    right: 4.h,
                                    bottom: 4.v,
                                  ),
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSaveIndigoA700,
                            height: 20.v,
                            width: 22.h,
                            margin: EdgeInsets.only(left: 12.h),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 28.v,
                  width: 266.h,
                  margin: EdgeInsets.only(bottom: 50.v),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite28x28,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                      )
                    ],
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
  Widget _buildBottomNavigationBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 78.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_forum_thread".tr,
      ),
      styleType: Style.bgGradientnameerrorContainernamecyan400,
    );
  }

  /// Section Widget
  Widget _buildPostSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplashTbtwpybncdw,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_ralph_edwards".tr,
                        style: CustomTextStyles.labelLargeMedium,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_sep_23_2021".tr,
                        style: CustomTextStyles.bodySmall11,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_mini_dolar_in_amet".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_look_my_collection".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHeartBlueGray900,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_24k_likes".tr,
                    style: CustomTextStyles.bodySmallBluegray90001,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMessageText,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 20.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_24k_comments".tr,
                    style: CustomTextStyles.bodySmallBluegray90001,
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
  Widget _buildCommentSection() {
    return SizedBox(
      height: 74.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgOval34x34,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_craig_love2".tr,
                                    style: CustomTextStyles.labelLarge_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_4h2".tr,
                                    style: CustomTextStyles
                                        .labelLargeBluegray30001,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "msg_we_are_living_the".tr,
                              style: CustomTextStyles.bodyMedium_3,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_02".tr,
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 32.h),
                        child: Text(
                          "lbl_10".tr,
                          style: CustomTextStyles.labelMediumMedium,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(
                      flex: 13,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMedium11,
                      ),
                    ),
                    Spacer(
                      flex: 73,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionBlueGray30001,
                      height: 16.v,
                      width: 14.h,
                    ),
                    Spacer(
                      flex: 13,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentSection1() {
    return SizedBox(
      height: 74.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgOval34x34,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_craig_love2".tr,
                                    style: CustomTextStyles.labelLarge_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_4h2".tr,
                                    style: CustomTextStyles
                                        .labelLargeBluegray30001,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "msg_we_are_living_the".tr,
                              style: CustomTextStyles.bodyMedium_3,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_02".tr,
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 32.h),
                        child: Text(
                          "lbl_10".tr,
                          style: CustomTextStyles.labelMediumMedium,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(
                      flex: 13,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMedium11,
                      ),
                    ),
                    Spacer(
                      flex: 73,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionBlueGray30001,
                      height: 16.v,
                      width: 14.h,
                    ),
                    Spacer(
                      flex: 13,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentSection2() {
    return SizedBox(
      height: 226.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 74.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgOval34x34,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  radius: BorderRadius.circular(
                                    16.h,
                                  ),
                                ),
                                SizedBox(width: 8.h),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_craig_love2".tr,
                                              style:
                                                  CustomTextStyles.labelLarge_1,
                                            ),
                                            TextSpan(
                                              text: "lbl_4h2".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBluegray30001,
                                            )
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 2.v),
                                      Text(
                                        "msg_we_are_living_the".tr,
                                        style: CustomTextStyles.bodyMedium_3,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 6.v),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "lbl_02".tr,
                                  style: CustomTextStyles.labelMediumMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Text(
                                    "lbl_10".tr,
                                    style: CustomTextStyles.labelMediumMedium,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 12.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Spacer(
                                flex: 13,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_reply".tr,
                                  style: CustomTextStyles.labelMedium11,
                                ),
                              ),
                              Spacer(
                                flex: 73,
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTelevisionBlueGray30001,
                                height: 16.v,
                                width: 14.h,
                              ),
                              Spacer(
                                flex: 13,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                alignment: Alignment.bottomCenter,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOval28x28,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                    ),
                    SizedBox(width: 6.h),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_craig_love2".tr,
                                    style: CustomTextStyles.labelLarge_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_4h2".tr,
                                    style: CustomTextStyles
                                        .labelLargeBluegray30001,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "msg_we_are_living_the".tr,
                              style: CustomTextStyles.bodyMedium_3,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 34,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMedium11,
                      ),
                    ),
                    Spacer(
                      flex: 65,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionBlueGray30001,
                      height: 16.v,
                      width: 14.h,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_02".tr,
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 18.h),
                    ),
                    Text(
                      "lbl_10".tr,
                      style: CustomTextStyles.labelMediumMedium,
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 44.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOval28x28,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                    ),
                    SizedBox(width: 6.h),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_craig_love2".tr,
                                    style: CustomTextStyles.labelLarge_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_4h2".tr,
                                    style: CustomTextStyles
                                        .labelLargeBluegray30001,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "msg_we_are_living_the".tr,
                              style: CustomTextStyles.bodyMedium_3,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 35,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMedium11,
                      ),
                    ),
                    Spacer(
                      flex: 64,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionBlueGray30001,
                      height: 16.v,
                      width: 14.h,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_02".tr,
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 18.h),
                    ),
                    Text(
                      "lbl_10".tr,
                      style: CustomTextStyles.labelMediumMedium,
                    )
                  ],
                ),
              )
            ],
          ),
          IntrinsicHeight(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 220.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: SizedBox(
                        width: 22.h,
                        child: Divider(
                          color: appTheme.blueGray30001.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_hide_replies".tr,
                          style: CustomTextStyles.labelMediumMedium,
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
  Widget _buildCommentInput() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 4.v,
      ),
      child: CustomTextFormField(
        controller: controller.commentInputController,
        hintText: "lbl_comment".tr,
        hintStyle: CustomTextStyles.bodyMediumBluegray3000114,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconMicBlueGray300,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 16.h,
          top: 10.v,
          bottom: 10.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL82,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(1),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Groups:
        return AppRoutes.imagepickerTabContainerPage;
      case BottomBarEnum.Post:
        return "/";
      case BottomBarEnum.Kibutz:
        return AppRoutes.communityForumsHome1Page;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOptionsOneBottomsheet;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.imagepickerTabContainerPage:
        return ImagepickerTabContainerPage();
      case AppRoutes.communityForumsHome1Page:
        return CommunityForumsHome1Page();
      case AppRoutes.profileOptionsOneBottomsheet:
        return ProfileOptionsOneBottomsheet();
      default:
        return DefaultWidget();
    }
  }
}
