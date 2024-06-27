import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/reporting_post_eight_controller.dart';
import '../models/questionnaire_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class QuestionnaireItemWidget extends StatelessWidget {
  QuestionnaireItemWidget(this.questionnaireItemModelObj, {Key? key})
      : super(
          key: key,
        );

  QuestionnaireItemModel questionnaireItemModelObj;

  var controller = Get.find<ReportingPostEightController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisSize: MainAxisSize.max,
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
                      color: appTheme.gray90003,
                      width: 2.h,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    questionnaireItemModelObj.spamText!.value,
                    style: CustomTextStyles.titleSmallOpenSansGray90003,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 2.v),
        Obx(
          () => Text(
            questionnaireItemModelObj.postText!.value,
            style: CustomTextStyles.bodyMediumBluegray800,
          ),
        )
      ],
    );
  }
}
