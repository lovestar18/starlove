import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/create_group_chat_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'widgets/userprofile1_item_widget.dart'; // ignore_for_file: must_be_immutable
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
                      horizontal: 4.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.dropShadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildGroupChatDetails(),
                        SizedBox(height: 74.v),
                        _buildIncludedChatsHeader(),
                        SizedBox(height: 20.v),
                        _buildUserProfiles(),
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
  Widget _buildGroupChatDetails() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 6.v,
            width: 22.h,
            radius: BorderRadius.circular(
              3.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_create_a_new_group".tr,
            style: CustomTextStyles.bodyLargeIndigo90002,
          ),
          SizedBox(height: 28.v),
          CustomTextFormField(
            width: 264.h,
            controller: controller.nameController,
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
          SizedBox(height: 28.v),
          CustomTextFormField(
            width: 264.h,
            controller: controller.descriptionController,
            hintText: "lbl_description".tr,
            hintStyle: CustomTextStyles.bodyMediumIndigo90002,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
            borderDecoration: TextFormFieldStyleHelper.underLineBlueA,
            filled: false,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIncludedChatsHeader() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "msg_included_chats_3".tr,
            style: CustomTextStyles.labelLargeOpenSansBluegray60001,
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
  Widget _buildUserProfiles() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 166.h),
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
                    .userprofile1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = controller
                      .createGroupChatModelObj
                      .value
                      .userprofile1ItemList
                      .value[index];
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 68.v),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomOutlinedButton(
                      height: 52.v,
                      width: 118.h,
                      text: "lbl_cancel".tr,
                      buttonStyle: CustomButtonStyles.outlineBlueA,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOpenSansBlueA40001,
                    ),
                    CustomElevatedButton(
                      height: 52.v,
                      width: 118.h,
                      text: "lbl_create_group".tr,
                      margin: EdgeInsets.only(right: 18.h),
                      buttonStyle: CustomButtonStyles.fillBlueATL4,
                      onPressed: () {
                        onTapCreategroup();
                      },
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

  /// Navigates to the addToChatScreen when the action is triggered.
  onTapTxtAddpeople() {
    Get.toNamed(
      AppRoutes.addToChatScreen,
    );
  }

  /// Navigates to the groupChatScreen when the action is triggered.
  onTapCreategroup() {
    Get.toNamed(
      AppRoutes.groupChatScreen,
    );
  }
}
