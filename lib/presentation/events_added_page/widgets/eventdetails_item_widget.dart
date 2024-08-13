import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../core/app_export.dart';
import '../controller/events_added_controller.dart';
import '../models/eventdetails_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventdetailsItemWidget extends StatelessWidget {
  EventdetailsItemWidget(this.eventdetailsItemModelObj, {Key? key})
      : super(
          key: key,
        );

  EventdetailsItemModel eventdetailsItemModelObj;

  var controller = Get.find<EventsAddedController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: eventdetailsItemModelObj.eventName!.value,
            height: 130.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        eventdetailsItemModelObj.eventDescriptio!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        eventdetailsItemModelObj.description!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 28.h),
              SizedBox(
                height: 28.v,
                width: 58.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3884,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3883,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3882,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      margin: EdgeInsets.only(right: 10.h),
                    ),
                    Container(
                      width: 28.adaptSize,
                      height: 28.adaptSize,
                      alignment: Alignment.center,
                      decoration: AppDecoration.gradientErrorContainerToCyan400
                          .copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: OutlineGradientButton(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            theme.colorScheme.errorContainer,
                            appTheme.cyan400
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        child: Obx(
                          () => Text(
                            eventdetailsItemModelObj.text1!.value,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumOnPrimary,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
