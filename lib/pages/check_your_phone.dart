import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckYourPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/img/checkphone.png',
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Check Your Phone',
                style: titleSplashStyle.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Kami telah mengirim notifikasi\nPendaftaran ke email Anda. Silahkan\ntunggu beberapa saat',
                textAlign: TextAlign.center,
                style: captionSplashStyle,
              ),
              SizedBox(height: 20),
              Container(
                height: 47,
                width: 160,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: greenColor,
                  child: Text(
                    'Buka Email',
                    style: buttonSplashStyle.copyWith(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 47,
                width: 160,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: whiteColor,
                  child: Text(
                    'Keluar',
                    style: buttonSplashStyle.copyWith(
                        fontSize: 20, color: greenColor),
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
