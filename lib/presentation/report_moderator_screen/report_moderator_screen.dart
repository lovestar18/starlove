import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/report_moderator_controller.dart'; // ignore_for_file: must_be_immutable

class ReportModeratorScreen extends GetWidget<ReportModeratorController> {
  const ReportModeratorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          height: 1218.v,
          width: 374.h,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1218.v,
              width: 374.h,
            ),
          ),
        ),
      ),
    );
  }
}
