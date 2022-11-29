import 'package:avm_plus/avm_plus/screens/login-folder/login_page.dart';
import 'package:avm_plus/avm_plus/screens/sign-up-folder/signUp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'avm_plus/constants/test2.dart';
import 'avm_plus/constants/tests-folder/same_variable_test.dart';
import 'avm_plus/constants/tests-folder/sequence_test.dart';
import 'avm_plus/constants/tests-folder/staggered_anim_test.dart';
import 'avm_plus/constants/tests-folder/test.dart';
import 'avm_plus/screens/activities-folder/activity_page.dart';
import 'avm_plus/screens/cinema-folder/cinema_page.dart';
import 'avm_plus/screens/concert-folder/concert_page.dart';
import 'avm_plus/screens/foods-folder/food_page.dart';
import 'avm_plus/screens/forgot-password-folder/forgot_password_page.dart';
import 'avm_plus/screens/home-folder/home_page.dart';
import 'avm_plus/screens/onboarding-folder/onboarding.dart';
import 'avm_plus/screens/profile/edit_profile.dart';
import 'avm_plus/screens/profile/profile.dart';
import 'avm_plus/screens/profile/profile_details.dart';
import 'avm_plus/screens/reduction-folder/reduction_page.dart';
import 'avm_plus/screens/trend-folder/trend_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/onboarding": (context) => OnboardingScreen(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignupPage(),
        "/forgot_password": (context) => ForgotPasswordPage(),
        "/home": (context) => HomePage(),
        "/profile": (context) => ProfilePage(),
        "/profile_details": (context) => ProfileDetails(),
        "/edit_profile": (context) => EditProfile(),
        "/foods": (context) => FoodPage(),
        "/activities": (context) => ActivityPage(),
        "/concert": (context) => ConcertPage(),
        "/cinema": (context) => CinemaPage(),
        "/reduction": (context) => ReductionPage(),
        "/trends": (context) => TrendPage(),
        "/test1": (context) => MyAppTest(),
        "/test": (context) => HomePageTest(),
        'sequence': (_)=> new SequencePage(),
        'StaggeredAnimationReplication': (_)=> new StaggeredAnimationReplication(),
        'SameVariableAnimationPage': (_)=> new SameVariableAnimationPage(),
      },
      initialRoute: "/onboarding",
    );
  }
}
/*

void main() => runApp(CarouselDemo());

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (ctx) => CarouselDemoHome(),
            '/basic': (ctx) => BasicDemo(),
            '/nocenter': (ctx) => NoCenterDemo(),
            '/image': (ctx) => ImageSliderDemo(),
            '/complicated': (ctx) => ComplicatedImageDemo(),
            '/enlarge': (ctx) => EnlargeStrategyDemo(),
            '/manual': (ctx) => ManuallyControlledSlider(),
            '/noloop': (ctx) => NoonLoopingDemo(),
            '/vertical': (ctx) => VerticalSliderDemo(),
            '/fullscreen': (ctx) => FullscreenSliderDemo(),
            '/ondemand': (ctx) => OnDemandCarouselDemo(),
            '/indicator': (ctx) => CarouselWithIndicatorDemo(),
            '/prefetch': (ctx) => PrefetchImageDemo(),
            '/reason': (ctx) => CarouselChangeReasonDemo(),
            '/position': (ctx) => KeepPageviewPositionDemo(),
            '/multiple': (ctx) => MultipleItemDemo(),
          },
        );
      },
      valueListenable: themeMode,
    );
  }
}*/
