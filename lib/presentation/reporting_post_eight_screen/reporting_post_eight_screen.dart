import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/reporting_post_eight_controller.dart'; // ignore_for_file: must_be_immutable

class ReportingPostEightScreen extends GetWidget<ReportingPostEightController> {
  const ReportingPostEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          height: double.maxFinite,
          width: 374.h,
        ),
      ),
    );
  }
}
