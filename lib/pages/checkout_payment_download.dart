import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/widgets/checkout_payment_widget.dart';
import 'package:sevenfutsalapps/widgets/detail_checkout_payment_widget.dart';
import 'package:sevenfutsalapps/widgets/navbar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutPaymentDownload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: buildAppBar(context),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/img/checkout.png',
                          width: 260,
                          height: 260,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Anda berhasil\nmelakukan Pembayaran',
                          style: titleSplashStyle.copyWith(
                            color: blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DetailCheckoutPaymentWidget(),
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: Column(
                          children: [
                            Center(
                              child: SizedBox(
                                width: 110,
                                height: 47,
                                child: RaisedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => OnboardingTwo()),
                                    // );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  color: greenColor,
                                  child: Text(
                                    'Unduh',
                                    style: buttonSplashStyle.copyWith(
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    '*Simpan bukti pembayaran',
                                    style: titleSplashStyle.copyWith(
                                      fontSize: 10,
                                      color: blackColor2,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
