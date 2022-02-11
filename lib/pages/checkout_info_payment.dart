import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/models/time_models.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sevenfutsalapps/widgets/info_description_widget.dart';
import 'package:sevenfutsalapps/widgets/navbar_widget.dart';
import 'package:sevenfutsalapps/widgets/time_widget.dart';

class CheckoutInfoPayment extends StatefulWidget {
  @override
  _CheckoutInfoPaymentState createState() => _CheckoutInfoPaymentState();
}

class _CheckoutInfoPaymentState extends State<CheckoutInfoPayment> {
  DateTime _dateTime = new DateTime(2022);

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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Keterangan',
                            style: titleSplashStyle.copyWith(
                              color: blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InfoDescriptionWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/Calendar.svg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tanggal',
                          style: titleSplashStyle.copyWith(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                      style: titleSplashStyle.copyWith(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 140,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () async {
                            DateTime? _newDate = await showDatePicker(
                              context: context,
                              initialDate: _dateTime,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025),
                            );

                            // if (_newDate! = null) {
                            //   setState(() {
                            //     _dateTime = _newDate;
                            //   });
                            // }
                          },
                          child: Text('Pilih Tanggal'),
                          style: ElevatedButton.styleFrom(
                              primary: greenColor, onPrimary: whiteColor)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/Time_Circle2.svg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Waktu',
                          style: titleSplashStyle.copyWith(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 400,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 3 / 2,
                        ),
                        children: [
                          TimeWidget(
                            TimeModels(
                              name: '08.00',
                              outlineColor: timeColorWhite,
                              penColor: blackColor2,
                              inlineColor: whiteColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '09.00',
                              outlineColor: greenColor,
                              penColor: whiteColor,
                              inlineColor: greenColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '10.00',
                              outlineColor: blackColor,
                              penColor: whiteColor,
                              inlineColor: blackColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '11.00',
                              outlineColor: blackColor,
                              penColor: whiteColor,
                              inlineColor: blackColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '12.00',
                              outlineColor: yellowColor2,
                              penColor: whiteColor,
                              inlineColor: yellowColor2,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '13.00',
                              outlineColor: blackColor,
                              penColor: whiteColor,
                              inlineColor: blackColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '14.00',
                              outlineColor: timeColorWhite,
                              penColor: blackColor2,
                              inlineColor: whiteColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '15.00',
                              outlineColor: yellowColor2,
                              penColor: whiteColor,
                              inlineColor: yellowColor2,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '16.00',
                              outlineColor: timeColorWhite,
                              penColor: blackColor2,
                              inlineColor: whiteColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '17.00',
                              outlineColor: blackColor,
                              penColor: whiteColor,
                              inlineColor: blackColor,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '18.00',
                              outlineColor: yellowColor2,
                              penColor: whiteColor,
                              inlineColor: yellowColor2,
                            ),
                          ),
                          TimeWidget(
                            TimeModels(
                              name: '19.00',
                              outlineColor: blackColor,
                              penColor: whiteColor,
                              inlineColor: blackColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Senin, 1 Januari 2021',
                          style: titleSplashStyle.copyWith(
                              color: blackColor2,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '10.00 - 11.00',
                          style: titleSplashStyle.copyWith(
                              color: blackColor2,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Rp. 150.000',
                          style: titleSplashStyle.copyWith(
                              color: greenColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 43,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Bayar',
                                style: titleSplashStyle.copyWith(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: greenColor, onPrimary: whiteColor)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
