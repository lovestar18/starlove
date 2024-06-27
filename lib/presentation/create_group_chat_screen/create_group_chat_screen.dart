import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/create_group_chat_controller.dart';
import 'models/userprofileslist_item_model.dart';
import 'widgets/userprofileslist_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateGroupChatScreen extends GetWidget<CreateGroupChatController> {
  CreateGroupChatScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.outlineBluegray60019.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionBlueGray60001,
                          height: 6.v,
                          width: 22.h,
                          radius: BorderRadius.circular(
                            3.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_create_a_new_group".tr,
                            style:
                                CustomTextStyles.bodyLargeOpenSansIndigo90002,
                          ),
                        ),
                        SizedBox(height: 28.v),
                        _buildGroupNameInput(),
                        SizedBox(height: 28.v),
                        _buildGroupDescriptionInput(),
                        SizedBox(height: 74.v),
                        _buildIncludedChatsSection(),
                        SizedBox(height: 20.v),
                        _buildUserProfilesList(),
                        SizedBox(height: 68.v),
                        _buildActionButtonsRow(),
                        SizedBox(height: 24.v)
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupNameInput() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        width: 264.h,
        controller: controller.groupNameInputController,
        hintText: "lbl_name".tr,
        hintStyle: CustomTextStyles.bodyMediumIndigo90002,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        borderDecoration: TextFormFieldStyleHelper.underLineBlueA,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupDescriptionInput() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        width: 264.h,
        controller: controller.groupDescriptionInputController,
        hintText: "lbl_description".tr,
        hintStyle: CustomTextStyles.bodyMediumIndigo90002,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueA,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildIncludedChatsSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_included_chats_3".tr,
              style: CustomTextStyles.labelLargeOpenSansBluegray60001,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapTxtAddpeople();
            },
            child: Text(
              "lbl_add_people".tr,
              style: CustomTextStyles.labelLargeOpenSansBlueA40001,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 174.h,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: controller.createGroupChatModelObj.value
              .userprofileslistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofileslistItemModel model = controller.createGroupChatModelObj
                .value.userprofileslistItemList.value[index];
            return UserprofileslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return CustomOutlinedButton(
      height: 52.v,
      width: 118.h,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.outlineBlueA,
      buttonTextStyle: CustomTextStyles.titleSmallOpenSansPrimary,
    );
  }

  /// Section Widget
  Widget _buildCreateGroupButton() {
    return CustomElevatedButton(
      height: 52.v,
      width: 118.h,
      text: "lbl_create_group".tr,
      margin: EdgeInsets.only(right: 20.h),
      buttonStyle: CustomButtonStyles.fillBlueATL4,
      onPressed: () {
        onTapCreateGroupButton();
      },
    );
  }

  /// Section Widget
  Widget _buildActionButtonsRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [_buildCancelButton(), _buildCreateGroupButton()],
          ),
        ),
      ),
    );
  }

  onTapTxtAddpeople() {}
  onTapCreateGroupButton() {}
}
