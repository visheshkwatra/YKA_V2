import 'bloc/var_twentyeight_bloc.dart';
import 'models/var_twentyeight_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

class VarTwentyeightScreen extends StatelessWidget {
  const VarTwentyeightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VarTwentyeightBloc>(
        create: (context) => VarTwentyeightBloc(
            VarTwentyeightState(varTwentyeightModelObj: VarTwentyeightModel()))
          ..add(VarTwentyeightInitialEvent()),
        child: VarTwentyeightScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VarTwentyeightBloc, VarTwentyeightState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(left: 99.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMaskGroup230x294,
                                    height: 230.v,
                                    width: 294.h),
                                SizedBox(height: 46.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgBrandingGuidelines31,
                                    height: 200.v,
                                    width: 182.h,
                                    margin: EdgeInsets.only(left: 6.h)),
                                SizedBox(height: 275.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgGroup1171275381,
                                    height: 76.v,
                                    width: 106.h,
                                    alignment: Alignment.centerRight)
                              ]))))));
    });
  }
}
