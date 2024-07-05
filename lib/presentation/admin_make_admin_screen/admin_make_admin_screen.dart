import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/admin_make_admin_controller.dart'; // ignore_for_file: must_be_immutable

class AdminMakeAdminScreen extends GetWidget<AdminMakeAdminController> {
  const AdminMakeAdminScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          height: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  right: 36.h,
                  bottom: 96.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_name".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_username2".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "msg_which_temple_are".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "msg_favorite_jewish2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_favorite_jewish3".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_linkedin".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_facebook".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_instagram".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_tiktok".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_answer".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ),
              _buildDeleteUserRow(),
              _buildMakeAdminButton(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 172.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup4824,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 38.v),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 16.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 44.h,
                          vertical: 36.v,
                        ),
                        decoration: AppDecoration.mainwhite.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_add_as_admin".tr,
                              style: CustomTextStyles.titleLargeOpenSansTeal900,
                            ),
                            SizedBox(height: 20.v),
                            Text(
                              "msg_are_you_sure_you5".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .titleLargeOpenSansBluegray90005,
                            ),
                            SizedBox(height: 20.v),
                            _buildConfirmMakeAdminButton(),
                            SizedBox(height: 20.v),
                            _buildCancelMakeAdminButton(),
                            SizedBox(height: 120.v)
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
    );
  }

  /// Section Widget
  Widget _buildViewProfileButton() {
    return CustomElevatedButton(
      height: 34.v,
      width: 110.h,
      text: "lbl_view_profile".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientOnPrimaryContainerToPurpleDecoration,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildDeleteUserButton() {
    return CustomElevatedButton(
      width: 108.h,
      text: "lbl_delete_user".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientDeepOrangeToYellowDecoration,
    );
  }

  /// Section Widget
  Widget _buildDeleteUserRow() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          top: 22.v,
          right: 18.h,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_cancel".tr,
                          style: CustomTextStyles.titleSmallOpenSansBlue500,
                        ),
                        _buildViewProfileButton()
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildDeleteUserButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMakeAdminButton() {
    return CustomElevatedButton(
      width: 142.h,
      text: "lbl_make_admin".tr,
      margin: EdgeInsets.only(
        top: 160.v,
        right: 16.h,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientTealAToCyanATL18Decoration,
      alignment: Alignment.topRight,
    );
  }

  /// Section Widget
  Widget _buildConfirmMakeAdminButton() {
    return CustomElevatedButton(
      height: 44.v,
      text: "lbl_yes_make_admin".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleSmallOpenSansBluegray90004,
    );
  }

  /// Section Widget
  Widget _buildCancelMakeAdminButton() {
    return CustomElevatedButton(
      height: 44.v,
      text: "lbl_cancel2".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.titleSmallOpenSansTeal900,
    );
  }
}
