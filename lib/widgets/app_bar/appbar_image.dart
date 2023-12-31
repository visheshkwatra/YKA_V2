import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: imagePath,
            height: 49.v,
            width: 48.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
