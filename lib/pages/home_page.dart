import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sevenfutsalapps/models/history_models.dart';
import 'package:sevenfutsalapps/models/infolapangan_models.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/widgets/history_widget.dart';
import 'package:sevenfutsalapps/widgets/info_widget.dart';
import 'package:sevenfutsalapps/widgets/infolapangan_widget.dart';
import 'package:sevenfutsalapps/widgets/search_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/Home.svg',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/Ticket1.svg',
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/Chart.svg',
            ),
            label: 'Grafik',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/Profile.svg',
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selamat Datang',
                              style: captionSplashStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                  text: 'Tio Dwi Satrio', style: nameStyle),
                            ),
                          ],
                        ),
                        SvgPicture.asset('assets/svg/Notification.svg')
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchWidget(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: InfoWidget()),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lapangan',
                          style: captionSplashStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View All',
                          style: captionSplashStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: greenColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 42,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          InfoLapangan(InfoLapanganModels(
                              icon: 'assets/svg/Rectangle 15.svg',
                              name: 'Lapangan A')),
                          SizedBox(
                            width: 20,
                          ),
                          InfoLapangan(InfoLapanganModels(
                              icon: 'assets/svg/Polygon 1.svg',
                              name: 'Lapangan B')),
                          SizedBox(
                            width: 20,
                          ),
                          InfoLapangan(InfoLapanganModels(
                              icon: 'assets/svg/Ellipse 5.svg',
                              name: 'Lapangan C'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'History',
                          style: captionSplashStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HistoryWidget(HistoryModels(
                              name: 'Liga A', img: 'assets/img/img_4.jpg')),
                          SizedBox(
                            width: 20,
                          ),
                          HistoryWidget(HistoryModels(
                              name: 'Liga B', img: 'assets/img/img_2.jpg')),
                          SizedBox(
                            width: 20,
                          ),
                          HistoryWidget(HistoryModels(
                              name: 'Liga C', img: 'assets/img/img_3.jpg')),
                          SizedBox(
                            width: 20,
                          ),
                          HistoryWidget(HistoryModels(
                              name: 'Liga D', img: 'assets/img/img_4.jpg'))
                        ],
                      ),
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
