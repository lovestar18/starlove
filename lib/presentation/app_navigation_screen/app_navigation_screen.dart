import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../application_one_bottomsheet/application_one_bottomsheet.dart';
import '../application_one_bottomsheet/controller/application_one_controller.dart';
import '../application_username_error_bottomsheet/application_username_error_bottomsheet.dart';
import '../application_username_error_bottomsheet/controller/application_username_error_controller.dart';
import '../chat_profile_bottomsheet/chat_profile_bottomsheet.dart';
import '../chat_profile_bottomsheet/controller/chat_profile_controller.dart';
import '../delete_account_bottomsheet/controller/delete_account_controller.dart';
import '../delete_account_bottomsheet/delete_account_bottomsheet.dart';
import '../delete_account_ii_bottomsheet/controller/delete_account_ii_controller.dart';
import '../delete_account_ii_bottomsheet/delete_account_ii_bottomsheet.dart';
import '../email_verification_bottomsheet/controller/email_verification_controller.dart';
import '../email_verification_bottomsheet/email_verification_bottomsheet.dart';
import '../forgot_password_bottomsheet/controller/forgot_password_controller.dart';
import '../forgot_password_bottomsheet/forgot_password_bottomsheet.dart';
import '../get_started_bottomsheet/controller/get_started_controller.dart';
import '../get_started_bottomsheet/get_started_bottomsheet.dart';
import '../logout_bottomsheet/controller/logout_controller.dart';
import '../logout_bottomsheet/logout_bottomsheet.dart';
import '../password_reset1_bottomsheet/controller/password_reset1_controller.dart';
import '../password_reset1_bottomsheet/password_reset1_bottomsheet.dart';
import '../password_settings1_bottomsheet/controller/password_settings1_controller.dart';
import '../password_settings1_bottomsheet/password_settings1_bottomsheet.dart';
import '../profile_bottomsheet/controller/profile_controller.dart';
import '../profile_bottomsheet/profile_bottomsheet.dart';
import '../profile_options_bottomsheet/controller/profile_options_controller.dart';
import '../profile_options_bottomsheet/profile_options_bottomsheet.dart';
import '../profile_options_one_bottomsheet/controller/profile_options_one_controller.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import '../profile_unfolllow_bottomsheet/controller/profile_unfolllow_controller.dart';
import '../profile_unfolllow_bottomsheet/profile_unfolllow_bottomsheet.dart';
import '../sending_love_bottomsheet/controller/sending_love_controller.dart';
import '../sending_love_bottomsheet/sending_love_bottomsheet.dart';
import '../sending_love_confirmation_bottomsheet/controller/sending_love_confirmation_controller.dart';
import '../sending_love_confirmation_bottomsheet/sending_love_confirmation_bottomsheet.dart';
import '../welcome_back_sign_in_bottomsheet/controller/welcome_back_sign_in_controller.dart';
import '../welcome_back_sign_in_bottomsheet/welcome_back_sign_in_bottomsheet.dart';
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
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.mainwhite,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "lbl_password_reset".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              PasswordReset1Bottomsheet(
                                  Get.put(PasswordReset1Controller()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_get_started_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              GetStartedBottomsheet(
                                  Get.put(GetStartedController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_application_one".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ApplicationOneBottomsheet(
                                  Get.put(ApplicationOneController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_success_app".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successApp1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_edit_profile2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_success_app".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successApp1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_forgot_password".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ForgotPasswordBottomsheet(
                                  Get.put(ForgotPasswordController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_email_verification".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              EmailVerificationBottomsheet(
                                  Get.put(EmailVerificationController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_password_reset".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              PasswordReset1Bottomsheet(
                                  Get.put(PasswordReset1Controller()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_successful_password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.successfulPasswordResetScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_application_username".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ApplicationUsernameErrorBottomsheet(Get.put(
                                  ApplicationUsernameErrorController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_welcome_back_sign".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              WelcomeBackSignInBottomsheet(
                                  Get.put(WelcomeBackSignInController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_if_you_are_not".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .ifYouAreNotFollowingPrivateProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_sending_love_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              SendingLoveBottomsheet(
                                  Get.put(SendingLoveController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_sending_love_confirmation".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              SendingLoveConfirmationBottomsheet(Get.put(
                                  SendingLoveConfirmationController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_homepage_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_feed_tab_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.feedTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_story2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_friends_tab_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.friendsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_discover".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discover1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reportingPostAuthenticatedUser1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_user_following".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.userFollowingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_profile_options".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ProfileOptionsOneBottomsheet(
                                  Get.put(ProfileOptionsOneController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_profile_unfolllow".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ProfileUnfolllowBottomsheet(
                                  Get.put(ProfileUnfolllowController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_comment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCommentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_create_wall_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createWallPostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_write_on_wall_post".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.writeOnWallPostOptionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_refer_a_friend".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.referAFriendScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_discover".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discover1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_user_profile".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_add_comment_write".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCommentWriteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_activity".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activity1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_frame_eighteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frameEighteen1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_create_post_tab".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createPostTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_activity".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activity1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reportingPostAuthenticatedUser1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post_eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reportingPostEightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_password_settings".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              PasswordSettings1Bottomsheet(
                                  Get.put(PasswordSettings1Controller()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_camera_permission".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cameraPermissionTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_reporting_post_five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reportingPostFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_profile_options2".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ProfileOptionsBottomsheet(
                                  Get.put(ProfileOptionsController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_delete_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deletePostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_frame_1000003628".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame1000003628Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_frame_eighteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frameEighteen1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_notification_settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_password_settings2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordSettingsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_password_settings3".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              PasswordSettings1Bottomsheet(
                                  Get.put(PasswordSettings1Controller()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_delete_account".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              DeleteAccountBottomsheet(
                                  Get.put(DeleteAccountController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_delete_account_ii".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              DeleteAccountIiBottomsheet(
                                  Get.put(DeleteAccountIiController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_help_center".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpCenterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_help_contact".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpContactScreen),
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
                          screenTitle: "msg_logout_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(context,
                              LogoutBottomsheet(Get.put(LogoutController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_groupsdashboard".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.groupsdashboardContainer1Page),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_profile_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(context,
                              ProfileBottomsheet(Get.put(ProfileController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_1_1_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_chat_profile_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ChatProfileBottomsheet(
                                  Get.put(ChatProfileController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_home_recent_chats".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeRecentChatsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_group_description2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.groupDescriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_edit_group_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editGroupChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_to_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addToChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_group_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groupChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_groupsdashboard2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .groupsdashboardContainerTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_discover_groups".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discoverGroupsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_grouppage_vtwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.grouppageVtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_community_forums2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityForumsHome1Page),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_community_forums3".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityForumsResponseOne1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_moderate_members".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.moderateMembersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_community_forums4".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityForumsResponse1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_edit_group_details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editGroupDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_create_new_group".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewGroupTabContainerScreen),
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
                          screenTitle: "msg_frame_1000003656".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame1000003656Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_community_forums3".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityForumsResponseOne1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_community_forums4".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityForumsResponse1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_write_in_communty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeInCommuntyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_stickers".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.stickersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_discover_events".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discoverEventsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_event_details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.eventDetailsPublicScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_event_private".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eventPrivateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_event_details2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .eventDetailsModeratorTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_event_moderator".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.eventModeratorDashboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_write_to_event".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeToEventScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_write_in_event".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.writeInEventOptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_event_members".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eventMembersScreen),
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
      decoration: AppDecoration.mainwhite,
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
                color: appTheme.blueGray40001,
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

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
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
        decoration: AppDecoration.mainwhite,
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
              color: appTheme.blueGray40001,
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
