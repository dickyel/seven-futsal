import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/models/daftar_models.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sevenfutsalapps/widgets/daftar_widget.dart';

class DaftarPage extends StatelessWidget {
  const DaftarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/img/bg-daftar.jpg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/svg/backbutton.svg',
                    width: 40,
                    height: 40,
                  ),
                  Image.asset(
                    'assets/img/logo.png',
                    height: 43,
                  )
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 230,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                        color: whiteColor),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Pendaftaran Members',
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DaftarTextfield(
                              DaftarModels(
                                id: 1,
                                title: 'Nama Lengkap',
                              ),
                            ),
                            DaftarTextfield(
                              DaftarModels(
                                  id: 2, title: 'Nomor Induk Kependudukan'),
                            ),
                            DaftarTextfield(
                              DaftarModels(id: 3, title: 'Email'),
                            ),
                            DaftarTextfield(
                              DaftarModels(id: 4, title: 'Password'),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: double.infinity,
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
                                  'Daftar Member',
                                  style:
                                      buttonSplashStyle.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      )
                    ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
