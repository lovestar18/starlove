import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/frame_1000003656_controller.dart';
import '../models/userprofileslist1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofileslist1ItemWidget extends StatelessWidget {
  Userprofileslist1ItemWidget(this.userprofileslist1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofileslist1ItemModel userprofileslist1ItemModelObj;

  var controller = Get.find<Frame1000003656Controller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
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
                        userprofileslist1ItemModelObj.memberName!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofileslist1ItemModelObj.username!.value,
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
                  decoration:
                      AppDecoration.gradientErrorContainerToCyan.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => Text(
                          userprofileslist1ItemModelObj.you!.value,
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        )
      ],
    );
  }
}
