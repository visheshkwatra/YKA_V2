import 'bloc/var_twentysix_bloc.dart';
import 'models/var_twentysix_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/app_bar/appbar_title.dart';
import 'package:yka_v2/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_icon_button.dart';

class VarTwentysixScreen extends StatelessWidget {
  const VarTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VarTwentysixBloc>(
      create: (context) => VarTwentysixBloc(VarTwentysixState(
        varTwentysixModelObj: VarTwentysixModel(),
      ))
        ..add(VarTwentysixInitialEvent()),
      child: VarTwentysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VarTwentysixBloc, VarTwentysixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.black900,
                    appTheme.black900,
                  ],
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(
                      height: 651.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          _buildTwelveStack(context),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse3041,
                            height: 157.v,
                            width: 214.h,
                            alignment: Alignment.topLeft,
                          ),
                          _buildElevenStack(context),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 299.h,
                              margin: EdgeInsets.only(left: 28.h),
                              child: Text(
                                "msg_browse_our_vast".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLargeOnPrimary17
                                    .copyWith(
                                  height: 1.59,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildEightySixRow(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwelveStack(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 290.v,
        width: 348.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.05,
              child: CustomImageView(
                imagePath: ImageConstant.imgMaskGroup290x348,
                height: 290.v,
                width: 348.h,
                alignment: Alignment.center,
              ),
            ),
            CustomAppBar(
              height: 75.v,
              actions: [
                AppbarTrailingCircleimage(
                  imagePath: ImageConstant.imgRectangle9859,
                  margin: EdgeInsets.only(
                    left: 37.h,
                    top: 4.v,
                    right: 4.h,
                  ),
                ),
                AppbarTitle(
                  text: "lbl_en".tr,
                  margin: EdgeInsets.fromLTRB(8.h, 9.v, 41.h, 4.v),
                ),
              ],
              styleType: Style.bgOutline,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildElevenStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 376.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 78.v),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup376x393,
              height: 376.v,
              width: 393.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 21.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 13.v,
                        width: 23.h,
                        margin: EdgeInsets.only(right: 13.h),
                        decoration: BoxDecoration(
                          color: appTheme.indigo200,
                          borderRadius: BorderRadius.circular(
                            11.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 73.v),
                    SizedBox(
                      height: 169.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 136.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(top: 12.v),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    appTheme.black900.withOpacity(0),
                                    appTheme.black900,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 155.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    appTheme.black900.withOpacity(0),
                                    appTheme.black900,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 275.h,
                              margin: EdgeInsets.only(left: 28.h),
                              decoration: AppDecoration.outlineGray,
                              child: Text(
                                "msg_explore_a_world".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.displaySmall!.copyWith(
                                  height: 1.24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightySixRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 37.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 7.v,
            margin: EdgeInsets.only(
              top: 28.v,
              bottom: 51.v,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 2,
              effect: ScrollingDotsEffect(
                activeDotColor: Color(0X1212121D),
                dotHeight: 7.v,
              ),
            ),
          ),
          Container(
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.only(
              right: 5.h,
              bottom: 14.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  padding: EdgeInsets.all(19.h),
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        36.h,
                      ),
                      border: Border.all(
                        color: appTheme.red800,
                        width: 1.h,
                        strokeAlign: strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
