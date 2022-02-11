import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/pages/onboarding_two.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/img/logo.png',
                height: 40,
                width: 116,
              ),
              SizedBox(
                height: 70,
              ),
              SvgPicture.asset(
                'assets/svg/splash_1.svg',
                height: 220,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Be Healthy!',
                style: titleSplashStyle.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Jaga Kesehatanmu dengan\nmenyempatkan waktu untuk\nberolahraga bersama teman',
                textAlign: TextAlign.center,
                style: captionSplashStyle,
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnboardingTwo()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  color: greenColor,
                  child: Text(
                    'Next',
                    style: buttonSplashStyle.copyWith(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
