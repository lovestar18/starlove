import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/moderator_dashboard_controller.dart';
import '../models/listtwentytwote_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListtwentytwoteItemWidget extends StatelessWidget {
  ListtwentytwoteItemWidget(this.listtwentytwoteItemModelObj,
      {Key? key, this.onTapStacktwentytwot})
      : super(
          key: key,
        );

  ListtwentytwoteItemModel listtwentytwoteItemModelObj;

  var controller = Get.find<ModeratorDashboardController>();

  VoidCallback? onTapStacktwentytwot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: GestureDetector(
        onTap: () {
          onTapStacktwentytwot?.call();
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            height: 122.v,
            width: 158.h,
            padding: EdgeInsets.symmetric(
              horizontal: 46.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.gradiant5.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 14.h),
                      child: Obx(
                        () => Text(
                          listtwentytwoteItemModelObj.twentyTwoText!.value,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    Obx(
                      () => Text(
                        listtwentytwoteItemModelObj.membersText!.value,
                        style: CustomTextStyles.bodyMediumRobotoPrimary,
                      ),
                    )
                  ],
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: listtwentytwoteItemModelObj.image!.value,
                    height: 60.adaptSize,
                    width: double.maxFinite,
                    alignment: Alignment.topRight,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
