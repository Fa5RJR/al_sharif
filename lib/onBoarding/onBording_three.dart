import 'package:flutter/material.dart';
import 'package:al_sharif/colors.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('assets/images/Illustration_3rd.png'),
                ),
                const Text(
                  'دعم نفسي ومجتمع بجانبك',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  'جلسات علاج نفسي وفيديوهات داعمة ومجتمع من أشخاص يشاركونك الرحلة، لأنك لست وحدك.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/signin'),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.turquoise) ,
                    ),
                    child: const Text('ابدأ الآن',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}