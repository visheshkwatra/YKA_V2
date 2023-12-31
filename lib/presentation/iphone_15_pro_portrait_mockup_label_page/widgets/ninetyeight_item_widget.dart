import '../models/ninetyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

// ignore: must_be_immutable
class NinetyeightItemWidget extends StatelessWidget {
  NinetyeightItemWidget(
    this.ninetyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetyeightItemModel ninetyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 90.adaptSize,
          width: 90.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 23.v,
          ),
          decoration: AppDecoration.gradientRedToRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: CustomImageView(
            imagePath: ninetyeightItemModelObj?.image,
            height: 43.v,
            width: 51.h,
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
    );
  }
}
