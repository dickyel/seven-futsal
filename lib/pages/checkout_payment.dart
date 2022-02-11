import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/widgets/checkout_payment_widget.dart';
import 'package:sevenfutsalapps/widgets/detail_checkout_payment_widget.dart';
import 'package:sevenfutsalapps/widgets/navbar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: buildAppBar(context),
        body: SafeArea(
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
                        child: Text(
                          'Pembayaran',
                          style: titleSplashStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 120,
                        child: CheckoutPaymentWidget(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Metode Pembayaran',
                                style: titleSplashStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Mandiri virtual account',
                                style: titleSplashStyle.copyWith(
                                    color: blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/img/mandiri.jpg',
                            height: 30,
                            width: 100,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      DetailCheckoutPaymentWidget(),
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: SizedBox(
                          width: 275,
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
                              'Bayar',
                              style: buttonSplashStyle.copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
