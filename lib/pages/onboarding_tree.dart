import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/pages/check_your_phone.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingTree extends StatelessWidget {
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
                'assets/svg/splash_3.svg',
                height: 220,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Enjoy Your Game',
                style: titleSplashStyle.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Nikmati permainanmu bersama teman\nClick Start untuk memulai permainan\npertamamu bersama teman - temanmu',
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
                      MaterialPageRoute(builder: (context) => CheckYourPhone()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  color: greenColor,
                  child: Text(
                    'Start!',
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
