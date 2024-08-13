import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/sidebar_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SidebarDraweritem extends StatelessWidget {
  SidebarDraweritem(this.controller, {Key? key})
      : super(
          key: key,
        );

  SidebarController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 262.h,
        decoration: AppDecoration.mainwhite.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL301,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 122.v,
              width: double.maxFinite,
              decoration: AppDecoration.gradientErrorContainerToCyan.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL30,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgStarlove2Transparent0182x232,
                    height: 82.v,
                    width: double.maxFinite,
                  )
                ],
              ),
            ),
            SizedBox(height: 30.v),
            _buildSidebarContent(),
            SizedBox(height: 30.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSidebarContent() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgChartPieSimple,
                editprofile: "lbl_admin_dashboard".tr,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgUserEdit,
                editprofile: "lbl_edit_profile2".tr,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionBlueGray90001,
                    height: 18.v,
                    width: 16.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_forjew_page".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 18.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgSmsBlueGray90001,
                editprofile: "lbl_kibitz_chat".tr,
              ),
            ),
            SizedBox(height: 18.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgMessageText2BlueGray90001,
                editprofile: "lbl_forums".tr,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgProfile2userBlueGray90001,
                editprofile: "lbl_groups".tr,
              ),
            ),
            SizedBox(height: 18.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgCalendar2BlueGray90001,
                editprofile: "lbl_events".tr,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgNotificationOn,
                editprofile: "lbl_notifications".tr,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgSetting2BlueGray90001,
                editprofile: "lbl_settings".tr,
              ),
            ),
            SizedBox(height: 18.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgMessageQuestion,
                editprofile: "lbl_contact_us".tr,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgProfile,
                editprofile: "lbl_help".tr,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: _buildEditProfileSection(
                usereditOne: ImageConstant.imgEntranceEft,
                editprofile: "lbl_logout".tr,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildEditProfileSection({
    required String usereditOne,
    required String editprofile,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: usereditOne,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            editprofile,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.blueGray90001,
            ),
          ),
        )
      ],
    );
  }
}
