import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_six.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/add_comment_controller.dart';
import 'models/commentslist_item_model.dart';
import 'widgets/commentslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class AddCommentScreen extends GetWidget<AddCommentController> {
  const AddCommentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildHeader(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [_buildCommentsSection(), SizedBox(height: 4.v)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildHeader() {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90013,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleSix(
        text: "lbl_comments".tr,
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgEdit,
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
  Widget _buildCommentsList() {
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
              .addCommentModelObj.value.commentslistItemList.value.length,
          itemBuilder: (context, index) {
            CommentslistItemModel model = controller
                .addCommentModelObj.value.commentslistItemList.value[index];
            return CommentslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentsSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [_buildCommentsList()],
      ),
    );
  }
}
