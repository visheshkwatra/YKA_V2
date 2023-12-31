import 'package:flutter/material.dart';
import 'package:yka_v2/presentation/iphone_15_pro_portrait_mockup_label_container_screen/iphone_15_pro_portrait_mockup_label_container_screen.dart';
import 'package:yka_v2/presentation/var_twentyeight_screen/var_twentyeight_screen.dart';
import 'package:yka_v2/presentation/var_twentysix_screen/var_twentysix_screen.dart';
import 'package:yka_v2/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:yka_v2/presentation/profile_two_screen/profile_two_screen.dart';
import 'package:yka_v2/presentation/profile_three_screen/profile_three_screen.dart';
import 'package:yka_v2/presentation/profile_four_screen/profile_four_screen.dart';
import 'package:yka_v2/presentation/profile_five_screen/profile_five_screen.dart';
import 'package:yka_v2/presentation/var_fifty_screen/var_fifty_screen.dart';
import 'package:yka_v2/presentation/profile_seven_screen/profile_seven_screen.dart';
import 'package:yka_v2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone15ProPortraitMockupLabelPage =
      '/iphone_15_pro_portrait_mockup_label_page';

  static const String iphone15ProPortraitMockupLabelContainerScreen =
      '/iphone_15_pro_portrait_mockup_label_container_screen';

  static const String varTwentyeightScreen = '/var_twentyeight_screen';

  static const String varTwentysixScreen = '/var_twentysix_screen';

  static const String landingPageScreen = '/landing_page_screen';

  static const String profileTwoScreen = '/profile_two_screen';

  static const String profileThreeScreen = '/profile_three_screen';

  static const String profileFourScreen = '/profile_four_screen';

  static const String profileFiveScreen = '/profile_five_screen';

  static const String varFiftyScreen = '/var_fifty_screen';

  static const String profileSevenScreen = '/profile_seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone15ProPortraitMockupLabelContainerScreen:
            Iphone15ProPortraitMockupLabelContainerScreen.builder,
        varTwentyeightScreen: VarTwentyeightScreen.builder,
        varTwentysixScreen: VarTwentysixScreen.builder,
        landingPageScreen: LandingPageScreen.builder,
        profileTwoScreen: ProfileTwoScreen.builder,
        profileThreeScreen: ProfileThreeScreen.builder,
        profileFourScreen: ProfileFourScreen.builder,
        profileFiveScreen: ProfileFiveScreen.builder,
        varFiftyScreen: VarFiftyScreen.builder,
        profileSevenScreen: ProfileSevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: VarTwentyeightScreen.builder
      };
}
