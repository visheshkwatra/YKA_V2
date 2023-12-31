import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: Row(
        children: [],
      ),
    );
  }
}
