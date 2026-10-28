import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'signup.dart';
import 'signin.dart';
import 'onBoarding/onBoarding_first.dart';
import 'onBoarding/onBoarding_sec.dart';
import 'onBoarding/onBording_three.dart';
import 'splash_screen.dart';

Future<void> main() async {
    await Supabase.initialize(
          url: 'https://ksxswmegevoaelgorhir.supabase.co',
          publishableKey: 'sb_publishable_nc8ZWa9qTdK_SOifAXEpNw_2DFbKEXc',
        );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/onboarding': (context) => const OnboardingOne(),
        '/onboarding2': (context) => const OnboardingTwo(),
        '/onboarding3': (context) => const OnboardingThree(),
        '/signin': (context) => const LoginScreen(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}