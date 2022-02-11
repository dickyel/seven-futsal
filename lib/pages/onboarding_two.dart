import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/pages/onboarding_tree.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingTwo extends StatelessWidget {
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
                'assets/svg/splash_2.svg',
                height: 220,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Be Sportif!',
                style: titleSplashStyle.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Susun permainanmu secara hebat agar\ndapat memenangkannya, dan tetaplah\nbersikap sportif',
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
                      MaterialPageRoute(builder: (context) => OnboardingTree()),
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
