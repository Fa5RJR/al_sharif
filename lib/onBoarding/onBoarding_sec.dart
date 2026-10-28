import 'package:flutter/material.dart';
import 'package:al_sharif/colors.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

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
                  child: Image.asset('assets/images/Illustration_sec.png'),
                ),
                const Text(
                  'احجز وتابع طلبك',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  'احجز موعدك وتابع حالة طلبك خطوة بخطوة، واستقبل تذكيرات بمواعيد الصيانة الدورية.',
                  textAlign: TextAlign.center,
                  style:TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/onboarding3'),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.turquoise) ,
                    ),
                    child: const Text('التالي',
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