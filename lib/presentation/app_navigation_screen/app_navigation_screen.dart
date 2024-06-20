import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../blocking_2_dialog/blocking_2_dialog.dart';
import '../blocking_2_dialog/controller/blocking_2_controller.dart';
import '../delete_account_ii_dialog/controller/delete_account_ii_controller.dart';
import '../delete_account_ii_dialog/delete_account_ii_dialog.dart';
import '../delete_post_confirmation_dialog/controller/delete_post_confirmation_controller.dart';
import '../delete_post_confirmation_dialog/delete_post_confirmation_dialog.dart';
import '../logout_dialog/controller/logout_controller.dart';
import '../logout_dialog/logout_dialog.dart';
import 'controller/app_navigation_controller.dart'; // ignore_for_file: must_be_immutable

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.white,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "lbl_login_version_2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginVersion2Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_sign_up_version".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpVersion2Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_application".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.applicationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_edit_profile2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_forgot_password2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_email_verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.emailVerificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_password_reset".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordResetScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_successful_password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.successfulPasswordResetScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_thank_you_application".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.thankYouApplicationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_homepage_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_feed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.feedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_story2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_user_profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.userProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reportingPostAuthenticatedUserScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_notifications_page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post_3".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportingPost3Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post_5".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportingPost5Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_camera_permission".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cameraPermission2Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_blocking_2_dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(context,
                              Blocking2Dialog(Get.put(Blocking2Controller()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_blocking_3".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blocking3Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_delete_post_confirmation".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              DeletePostConfirmationDialog(
                                  Get.put(DeletePostConfirmationController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_report_user".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportUserScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_comment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCommentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_view_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewPostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_create_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createPostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_create_post_options".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createPostOptionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_write_wall_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeWallPostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_write_wall_post".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.writeWallPostOptionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_refer_a_friend".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.referAFriendScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_notification_settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_password_settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_password_settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordSettings1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_delete_account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_delete_account_ii".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              DeleteAccountIiDialog(
                                  Get.put(DeleteAccountIiController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_help_center_tab".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.helpCenterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_privacy_policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_eula".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eulaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_logout_dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(context,
                              LogoutDialog(Get.put(LogoutController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_1_1_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_to_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addToChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_chat_profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_group_description".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.groupDescriptionTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_create_group_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createGroupChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_new_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_home_recent_chats".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeRecentChatsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_group_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groupChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_groupsdashboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groupsdashboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_listofgroupmembers".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.listofgroupmembersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_report_moderator".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportModeratorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_write_in_group".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeInGroupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_write_in_group".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.writeInGroupOptionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_grouppage_v2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.grouppageV2Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_moderate_members".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.moderateMembersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_edit_group_details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editGroupDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_create_new_group2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createNewGroupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_discover_groups".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discoverGroupsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_moderator_dashboard".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.moderatorDashboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_community_forums2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityForumsResponse1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_write_in_communty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeInCommuntyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_admin_dashboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.adminDashboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_application_review".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.applicationReviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_sidebar".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sidebarScreen),
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
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: AppDecoration.white,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "lbl_app_navigation".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "msg_check_your_app_s".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.blueGray40003,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.white,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray40003,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
