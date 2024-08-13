import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_comment_write_controller.dart';
import 'models/userprofilelist2_item_model.dart';
import 'widgets/userprofilelist2_item_widget.dart'; // ignore_for_file: must_be_immutable

class AddCommentWriteScreen extends GetWidget<AddCommentWriteController> {
  const AddCommentWriteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          children: [SizedBox(height: 20.v), _buildUserProfileList()],
        ),
        bottomNavigationBar: _buildCommentInput(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 76.v,
      leadingWidth: 54.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 22.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_comments".tr,
      ),
      styleType: Style.bgGradientnameerrorContainernamecyan400,
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
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
          itemCount: controller.addCommentWriteModelObj.value
              .userprofilelist2ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist2ItemModel model = controller.addCommentWriteModelObj
                .value.userprofilelist2ItemList.value[index];
            return Userprofilelist2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentInput() {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 16.h,
        bottom: 34.v,
      ),
      child: CustomTextFormField(
        controller: controller.commentInputController,
        hintText: "lbl_you_look_nice".tr,
        hintStyle: CustomTextStyles.bodyMediumInterGray60001,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 8.v, 16.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgAirplaneBlueGray300,
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
