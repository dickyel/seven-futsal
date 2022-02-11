import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/models/info_detail_models.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/widgets/info_detail_widget.dart';
import 'package:sevenfutsalapps/widgets/navbar_widget.dart';
import 'package:sevenfutsalapps/widgets/search_widget.dart';

class FieldChoose extends StatelessWidget {
  const FieldChoose({Key? key}) : super(key: key);

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
              child: SearchWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  InfoDetailWidget(InfoDetailModels(
                      id: 1,
                      img: 'assets/img/img_2.jpg',
                      name: 'Lapangan A',
                      kota: 'Bandung',
                      menit: '60 menit',
                      rating: '4.8/5.0',
                      harga: 'Rp. 60.000')),
                  InfoDetailWidget(
                    InfoDetailModels(
                        id: 1,
                        name: 'Lapangan B',
                        img: 'assets/img/img_3.jpg',
                        kota: 'Bandung',
                        menit: '60 menit',
                        rating: '4.9/5.0',
                        harga: 'Rp. 60.000'),
                  ),
                  InfoDetailWidget(
                    InfoDetailModels(
                        id: 1,
                        img: 'assets/img/img_4.jpg',
                        name: 'Lapangan C',
                        kota: 'Bandung',
                        menit: '60 menit',
                        rating: '5.0/5.0',
                        harga: 'Rp. 80.000'),
                  ),
                  InfoDetailWidget(
                    InfoDetailModels(
                        id: 1,
                        img: 'assets/img/img_2.jpg',
                        name: 'Lapangan D',
                        kota: 'Bandung',
                        menit: '60 menit',
                        rating: '5.0/5.0',
                        harga: 'Rp. 80.000'),
                  ),
                  InfoDetailWidget(
                    InfoDetailModels(
                        id: 1,
                        img: 'assets/img/img_4.jpg',
                        name: 'Lapangan E',
                        kota: 'Bandung',
                        menit: '60 menit',
                        rating: '5.0/5.0',
                        harga: 'Rp. 100.000'),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
