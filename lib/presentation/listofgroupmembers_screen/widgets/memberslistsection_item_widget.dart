import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/listofgroupmembers_controller.dart';
import '../models/memberslistsection_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MemberslistsectionItemWidget extends StatelessWidget {
  MemberslistsectionItemWidget(this.memberslistsectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MemberslistsectionItemModel memberslistsectionItemModelObj;

  var controller = Get.find<ListofgroupmembersController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatar,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        SizedBox(width: 4.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  memberslistsectionItemModelObj.memberName!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  memberslistsectionItemModelObj.username!.value,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 4.h),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.gradientErrorContainerToCyan.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  () => Text(
                    memberslistsectionItemModelObj.moderator!.value,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
