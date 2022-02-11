import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';

class CheckoutPaymentWidget extends StatelessWidget {
  const CheckoutPaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Harga',
                      style: titleSplashStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: greyColor2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rp. 80.000',
                      style: titleSplashStyle.copyWith(
                          color: greenColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  'Detail',
                  style: titleSplashStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
