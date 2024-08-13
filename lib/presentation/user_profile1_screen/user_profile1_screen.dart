import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import 'controller/user_profile1_controller.dart';
import 'models/userprofilelist1_item_model.dart';
import 'widgets/userprofilelist1_item_widget.dart'; // ignore_for_file: must_be_immutable

class UserProfile1Screen extends GetWidget<UserProfile1Controller> {
  const UserProfile1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Column(
          children: [
            _buildCreateFromSection(),
            SizedBox(height: 22.v),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 88.h),
              child: Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgImages12,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90005,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgImages116x16,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90005,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 12.v,
                    width: 8.h,
                  ),
                  SizedBox(width: 12.h),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90005,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgInfoBlueGray30001,
                    height: 14.v,
                    width: 16.h,
                  ),
                  SizedBox(width: 12.h),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90005,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseBlueGray300011,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  )
                ],
              ),
            ),
            SizedBox(height: 18.v),
            _buildFollowerFollowingBar(),
            SizedBox(height: 14.v),
            _buildFollowButtonSection(),
            SizedBox(height: 14.v),
            _buildPostCreationSection(),
            SizedBox(height: 26.v),
            SizedBox(
              width: 182.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_wall".tr,
                    style: CustomTextStyles.labelLargeQuicksand12,
                  ),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(left: 118.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.indigoA400, appTheme.cyan40002],
                      ),
                    ),
                  ),
                  Text(
                    "lbl_posts".tr,
                    style: CustomTextStyles.labelLargeQuicksandPrimary12,
                  )
                ],
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: double.maxFinite,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                indent: 20.h,
                endIndent: 26.h,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 202.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  endIndent: 26.h,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            _buildStackunsplash(),
            SizedBox(height: 20.v),
            _buildStackunsplash1()
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller
              .userProfile1ModelObj.value.userprofilelist1ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist1ItemModel model = controller.userProfile1ModelObj
                .value.userprofilelist1ItemList.value[index];
            return Userprofilelist1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateFromSection() {
    return SizedBox(
      height: 236.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 10.v,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      height: 18.v,
                      margin: EdgeInsets.only(top: 2.v),
                      padding: EdgeInsets.only(left: 4.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          SizedBox(
                            height: 18.v,
                            width: 54.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "lbl_9_41".tr,
                              style:
                                  CustomTextStyles.titleSmallOnErrorContainer,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsOnerrorcontainer,
                    height: 10.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsOnerrorcontainer10x14,
                    height: 10.v,
                    width: 14.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      bottom: 4.v,
                    ),
                  ),
                  Container(
                    height: 10.v,
                    width: 28.h,
                    margin: EdgeInsets.only(bottom: 4.v),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgReply,
                          height: 10.v,
                          width: double.maxFinite,
                        ),
                        Container(
                          height: 6.v,
                          width: 18.h,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              1.h,
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 154.v,
              width: 374.h,
              decoration: BoxDecoration(
                color: appTheme.deepPurpleA200,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgRectangle6026154x374,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 154.v,
              width: 374.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.black900.withOpacity(0.74),
                    appTheme.black900.withOpacity(0)
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 6.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(right: 68.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "",
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgCellularConnection,
                          height: 12.v,
                          width: 18.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 12.v,
                          width: 16.h,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                        Container(
                          width: 26.h,
                          margin: EdgeInsets.only(left: 6.h),
                          decoration:
                              AppDecoration.outlineOnErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 8.v,
                                  width: 16.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onErrorContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6.h),
                              CustomImageView(
                                imagePath: ImageConstant.imgCap,
                                height: 4.v,
                                width: 1.h,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 62.v),
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 34.v,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(0.15),
                                width: 0.5.h,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowLeftOnerrorcontainer12x8,
                            height: 12.v,
                            width: 8.h,
                            margin: EdgeInsets.only(left: 12.h),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 34.v,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(0.15),
                                width: 0.5.h,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgTelevisionOnerrorcontainer,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            margin: EdgeInsets.only(right: 6.h),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 64.h,
                decoration: AppDecoration.fillBluegray10001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder32,
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgMute,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 1.v,
                        right: 1.h,
                        bottom: 1.v,
                      ),
                      strokeWidth: 1.h,
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.indigoA400, appTheme.cyan40002],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Container(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            32.h,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_musiani_wanda".tr,
                style: CustomTextStyles.titleMediumQuicksandCyan40002,
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_i_am_pop_model".tr,
                style: CustomTextStyles.bodyMediumQuicksandBluegray9000513,
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowerFollowingBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 14.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_220".tr,
                      style: CustomTextStyles.titleMediumQuicksandGray90012,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_mishpacha".tr,
                      style: CustomTextStyles.titleMediumQuicksandGray40001,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_150".tr,
                  style: CustomTextStyles.titleMediumQuicksandGray90012,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_l".tr,
                  style: CustomTextStyles.titleMediumQuicksandGray40001,
                ),
                TextSpan(
                  text: "lbl_ove_streaks".tr,
                  style: CustomTextStyles.titleMediumQuicksandGray40001,
                )
              ],
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowButtonSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 282.h,
            height: 40.v,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 10.v,
                ),
              ),
              onPressed: () {},
              child: Text(
                "lbl_follow2".tr,
                style: CustomTextStyles.titleSmallQuicksandPrimary,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Container(
            height: 40.v,
            width: 50.h,
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgContrastPrimary1,
                  height: 16.v,
                  width: 18.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostCreationSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineGray20004.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.h,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgAvatar40x40,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "msg_what_s_happening".tr,
                      style: CustomTextStyles.bodyMediumQuicksandBluegray300,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 44.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlueGray90005,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 2.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserBlueGray90005,
                  height: 16.v,
                  width: 20.h,
                  margin: EdgeInsets.only(left: 20.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlueGray9000520x20,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 20.h),
                ),
                Spacer(),
                Container(
                  width: 72.h,
                  height: 36.v,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [appTheme.indigoA400, appTheme.cyan40002],
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      padding: EdgeInsets.zero,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      "lbl_post".tr,
                      style:
                          CustomTextStyles.titleSmallQuicksandOnErrorContainer,
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
  Widget _buildStackunsplash() {
    return Container(
      height: 356.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 308.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray10001,
                                borderRadius: BorderRadius.circular(
                                  16.h,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.h),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_ralph_edwards".tr,
                                    style: CustomTextStyles
                                        .bodyMediumQuicksandBluegray90005,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_2_minutes".tr,
                                    style: CustomTextStyles
                                        .bodySmallQuicksandBluegray30011,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 10.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray400,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 10.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray400,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 10.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray400,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: 318.h,
                child: Text(
                  "msg_look_my_collection".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumQuicksandBluegray9000513,
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle188BlueGray10001,
                      height: 202.v,
                      width: 164.h,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgRectangle189BlueGray10001,
                            height: 98.v,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 4.v),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgRectangle190BlueGray10001,
                            height: 98.v,
                            width: double.maxFinite,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 58.v),
              CustomImageView(
                imagePath: ImageConstant.imgVector180,
                height: 1.v,
                width: double.maxFinite,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 18.h,
                bottom: 20.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgOffer,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_24k_likes".tr,
                        style: CustomTextStyles.bodySmallQuicksandBluegray90005,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMegaphoneBlueGray90005,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(left: 24.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_24k_comments".tr,
                      style: CustomTextStyles.bodySmallQuicksandBluegray90005,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 22.h),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_24k_stars".tr,
                        style: CustomTextStyles.bodySmallQuicksandBluegray90005,
                      ),
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
  Widget _buildStackunsplash1() {
    return Container(
      height: 356.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 308.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray10001,
                                borderRadius: BorderRadius.circular(
                                  16.h,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.h),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_ralph_edwards".tr,
                                    style: CustomTextStyles
                                        .bodyMediumQuicksandBluegray90005,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_2_minutes".tr,
                                    style: CustomTextStyles
                                        .bodySmallQuicksandBluegray30011,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 10.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray400,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 10.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray400,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 10.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray400,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: 318.h,
                child: Text(
                  "msg_look_my_collection".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumQuicksandBluegray9000513,
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle188BlueGray10001,
                      height: 202.v,
                      width: 164.h,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgRectangle189BlueGray10001,
                            height: 98.v,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 4.v),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgRectangle190BlueGray10001,
                            height: 98.v,
                            width: double.maxFinite,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 58.v),
              CustomImageView(
                imagePath: ImageConstant.imgVector180,
                height: 1.v,
                width: double.maxFinite,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 18.h,
                bottom: 20.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgOffer,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_24k_likes".tr,
                        style: CustomTextStyles.bodySmallInterBluegray90005,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMegaphoneBlueGray90005,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(left: 20.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_24k_comments".tr,
                      style: CustomTextStyles.bodySmallInterBluegray90005,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 20.h),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_24k_stars".tr,
                        style: CustomTextStyles.bodySmallInterBluegray90005,
                      ),
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
}
