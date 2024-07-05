import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_nine.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/add_comment_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class AddCommentScreen extends GetWidget<AddCommentController> {
  const AddCommentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [_buildUserProfileList()],
          ),
        ),
        bottomNavigationBar: _buildCommentSection(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90014,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleNine(
        text: "lbl_comments".tr,
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgEditGray90014,
          margin: EdgeInsets.only(
            top: 12.v,
            right: 15.h,
            bottom: 12.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: controller
              .addCommentModelObj.value.userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = controller
                .addCommentModelObj.value.userprofilelistItemList.value[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentSection() {
    return Container(
      height: 32.v,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 12.v,
      ),
      decoration: AppDecoration.mainwhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            color: appTheme.blueGray90003,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(
                "lbl_type_something".tr,
                style: CustomTextStyles.titleSmallOpenSansGray400,
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.gradientIndigoAToIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_post".tr,
                  style:
                      CustomTextStyles.titleSmallOpenSansOnErrorContainerBold,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
