import 'package:flutter/material.dart';
import 'package:al_sharif/colors.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

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
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/signin'),

                    child: const Text('تخطي'),
                  ),
                ),
                Expanded(
                  child: Image.asset('assets/images/Illustration_first.png'),
                ),
                const Text(
                  ' اختيارات أكثر خطوة أقرب إليك',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  'استخدم الذكاء الاصطناعي لتقدير نوع الطرف الصناعي المناسب لحالتك وتكلفته التقريبية في دقائق.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/onboarding2'),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.turquoise) ,
                    ),
                    child: const Text('التالي',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,

                    )
                    ),
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
