import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/add_comment_controller.dart';
import '../models/commentslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommentslistItemWidget extends StatelessWidget {
  CommentslistItemWidget(this.commentslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CommentslistItemModel commentslistItemModelObj;

  var controller = Get.find<AddCommentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.backgroundGreyBackground.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse192,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.0.adaptSize,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      commentslistItemModelObj.username!.value,
                      style: CustomTextStyles.titleMediumOpenSansGray90013,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      commentslistItemModelObj.commentText!.value,
                      style: CustomTextStyles.titleSmallOpenSansGray90013,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Obx(
                          () => Text(
                            commentslistItemModelObj.timeAgo!.value,
                            style: CustomTextStyles.labelLargeOpenSansGray60003,
                          ),
                        ),
                        Spacer(),
                        Obx(
                          () => Text(
                            commentslistItemModelObj.onehundredtwent!.value,
                            style: CustomTextStyles.labelLargeOpenSansGray60003,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStarOfDavidSolid,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Obx(
                            () => Text(
                              commentslistItemModelObj.likesCount!.value,
                              style:
                                  CustomTextStyles.labelLargeOpenSansGray60003,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHeart,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
          )
        ],
      ),
    );
  }
}
