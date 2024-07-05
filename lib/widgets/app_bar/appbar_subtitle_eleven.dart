import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarSubtitleEleven extends StatelessWidget {
  AppbarSubtitleEleven({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.titleLargeOpenSansOnErrorContainer.copyWith(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
            height: 1.40,
          ),
        ),
      ),
    );
  }
}
