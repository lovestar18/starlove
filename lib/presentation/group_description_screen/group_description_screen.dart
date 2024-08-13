import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/group_description_controller.dart';
import 'models/memberprofile_item_model.dart';
import 'widgets/memberprofile_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupDescriptionScreen extends GetWidget<GroupDescriptionController> {
  GroupDescriptionScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(bottom: 54.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimary.withOpacity(1),
                appTheme.gray100
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildHeaderSection(),
                SizedBox(height: 16.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        children: [
                          CustomFloatingTextField(
                            controller: controller.nameController,
                            labelText: "lbl_group_name3".tr,
                            labelStyle: theme.textTheme.bodyLarge!,
                            hintText: "lbl_group_name3".tr,
                            validator: (value) {
                              if (!isText(value)) {
                                return "err_msg_please_enter_valid_text";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.v),
                          CustomTextFormField(
                            controller: controller.groupdescriptioController,
                            hintText: "msg_group_description2".tr,
                            hintStyle: CustomTextStyles.bodySmall12_1,
                            textInputAction: TextInputAction.done,
                            maxLines: 9,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 10.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGrayTL8,
                          ),
                          SizedBox(height: 20.v),
                          _buildChatBackgroundSection(),
                          SizedBox(height: 20.v),
                          _buildMembersSection()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveChangesButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093472x374,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 60.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 26.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_edit_group_chat2".tr,
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChatBackgroundSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_chat_background".tr,
                  style: CustomTextStyles.bodySmall12_1,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_default".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMembersSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_78_members".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgPlusBlack900,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_add_member".tr,
                    style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 14.v,
                  );
                },
                itemCount: controller.groupDescriptionModelObj.value
                    .memberprofileItemList.value.length,
                itemBuilder: (context, index) {
                  MemberprofileItemModel model = controller
                      .groupDescriptionModelObj
                      .value
                      .memberprofileItemList
                      .value[index];
                  return MemberprofileItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChangesButton() {
    return CustomOutlinedButton(
      text: "lbl_save_changes2".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 18.h,
        bottom: 14.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
