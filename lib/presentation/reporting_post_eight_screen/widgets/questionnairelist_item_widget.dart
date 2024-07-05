import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/reporting_post_eight_controller.dart';
import '../models/questionnairelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class QuestionnairelistItemWidget extends StatelessWidget {
  QuestionnairelistItemWidget(this.questionnairelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  QuestionnairelistItemModel questionnairelistItemModelObj;

  var controller = Get.find<ReportingPostEightController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                    border: Border.all(
                      color: appTheme.gray90004,
                      width: 2.h,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    questionnairelistItemModelObj.spamText!.value,
                    style: CustomTextStyles.titleSmallOpenSansGray90004,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 2.v),
        Obx(
          () => Text(
            questionnairelistItemModelObj.postText!.value,
            style: CustomTextStyles.bodyMediumErrorContainer,
          ),
        )
      ],
    );
  }
}
