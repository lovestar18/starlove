import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_comment_controller.dart';
import 'models/userprofileslist_item_model.dart';
import 'widgets/userprofileslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class AddCommentScreen extends GetWidget<AddCommentController> {
  const AddCommentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          children: [
            _buildCommentHeader(),
            SizedBox(height: 20.v),
            _buildUserProfilesList()
          ],
        ),
        bottomNavigationBar: _buildMessageInput(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentHeader() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup7830,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            leadingWidth: 53.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 19.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "lbl_comments".tr,
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
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller
              .addCommentModelObj.value.userprofileslistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofileslistItemModel model = controller
                .addCommentModelObj.value.userprofileslistItemList.value[index];
            return UserprofileslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageInput() {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 18.h,
        bottom: 34.v,
      ),
      child: CustomTextFormField(
        controller: controller.messageInputController,
        hintText: "lbl_message2".tr,
        hintStyle: CustomTextStyles.bodyMediumInterBluegray3000114,
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

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
