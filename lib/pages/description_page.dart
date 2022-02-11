import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/models/gallery_models.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/widgets/gallery_widget.dart';
import 'package:sevenfutsalapps/widgets/navbar_widget.dart';

class DescriptionPage extends StatelessWidget {
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
                    Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/img/img_4.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Deskripsi',
                          style: titleSplashStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lapangan A merupakan salah satu lapangan yang ada di Seven Futsal Bandung. Lapangan ini diberik julukan VVIP, karena kualitas dan harganya yang tinggi. Bahkan tertinggi di Seven Futsal Bandung',
                          style: titleSplashStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyColor2),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Gallery',
                          style: titleSplashStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GalleryWidget(
                            GalleryModels(img: 'assets/img/img_4.jpg'),
                          ),
                          SizedBox(width: 20),
                          GalleryWidget(
                            GalleryModels(img: 'assets/img/img_2.jpg'),
                          ),
                          SizedBox(width: 20),
                          GalleryWidget(
                            GalleryModels(img: 'assets/img/img_3.jpg'),
                          ),
                          SizedBox(width: 20),
                          GalleryWidget(
                            GalleryModels(img: 'assets/img/img_4.jpg'),
                          ),
                          SizedBox(width: 20),
                          GalleryWidget(
                            GalleryModels(img: 'assets/img/img_3.jpg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                            'Selanjutnya',
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
      ),
    );
  }
}
