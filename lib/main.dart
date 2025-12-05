import 'package:flutter/material.dart';
import 'package:flutter_scalify/responsive_scale/responsive_config.dart';
import 'package:flutter_scalify/responsive_scale/responsive_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/utils/screen_names.dart';
import 'package:investment/features/login_screen/presentation/view/login_screen.dart';
import 'package:investment/features/main_screen/presentation/view/main_screen.dart';
import 'package:investment/features/otp_screen/presentation/view/otp_screen.dart';
import 'package:investment/features/register_screen/presentation/view/registration_screen.dart';
import 'package:investment/features/welcome_screen/presentation/view/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        builder: (context, child) => ResponsiveProvider(
          config: const ResponsiveConfig(
            designWidth: 375,
            designHeight: 812,
            minScale: 0.5,
            maxScale: 3.0,
            // 🛡️ New: Protects UI on large screens (4K/UltraWide)
            memoryProtectionThreshold: 1920.0, 
            highResScaleFactor: 0.60, 
          ),
          child: child ?? const SizedBox()),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routes: {
          ScreenNames.welcome: (context) => const WelcomScreen(),
          ScreenNames.register: (context) => const RegistrationScreen(),
          // ScreenNames.otp: (context) => const OtpScreen(),
          ScreenNames.login: (context) => const LoginScreen(),
          ScreenNames.home: (context) => const MainScreen(), // Placeholder for home screen
          // Add other routes here
        },
        initialRoute: ScreenNames.welcome,
      ),
    );
  }
}
