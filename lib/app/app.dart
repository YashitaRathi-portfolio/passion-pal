import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';
import '../providers/theme_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/splash/splash_screen.dart';
import '../screens/onboarding/welcome_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/auth/forgot_password_screen.dart';
import '../screens/onboarding/hobby_selection_screen.dart';
import '../screens/onboarding/level_selection_screen.dart';
import '../screens/onboarding/goal_setting_screen.dart';
import '../screens/dashboard/dashboard_screen.dart';

class PassionPalApp extends StatelessWidget {
  const PassionPalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'PassionPal',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        // '/hobby-selection': (context) => const HobbySelectionScreen(),
        // '/level-selection': (context) => const LevelSelectionScreen(),
        // '/goal-setting': (context) => const GoalSettingScreen(),
        // '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
