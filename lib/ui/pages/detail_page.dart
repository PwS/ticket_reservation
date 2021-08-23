import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';
import 'package:ticket_reservation/utils/utils.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);

    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: _sizeScreen.hp(45),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/image_destination1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: _sizeScreen.hp(20),
        margin: EdgeInsets.only(top: _sizeScreen.hp(25)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              ///HeaderLogo
              Container(
                width: 108,
                height: 24,
                margin: EdgeInsets.only(
                  top: _sizeScreen.hp(4),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/icon_emblem.png'))),
              ),

              ///Tittle
              Container(
                margin: EdgeInsets.only(
                  top: _sizeScreen.hp(22),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lake Ciliwung',
                            style: txtWhiteTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Tangerang',
                            style: txtWhiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: light),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(right: 2),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/icon_star.png'))),
                        ),
                        Text(
                          '4.8',
                          style: txtWhiteTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              ///Description
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: _sizeScreen.hp(4)),
                padding: EdgeInsets.symmetric(
                    horizontal: _sizeScreen.wp(5), vertical: _sizeScreen.hp(3)),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: txtBlackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(1),
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style:
                          txtBlackTextStyle.copyWith(fontSize: 14, height: 2),
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(1),
                    ),
                    Text(
                      'Photos',
                      style: txtBlackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(2),
                    ),
                    Row(
                      children: [
                        CustomPhotoItem(
                          imageUrl: 'assets/images/image_photo1.png',
                        ),
                        CustomPhotoItem(
                          imageUrl: 'assets/images/image_photo2.png',
                        ),
                        CustomPhotoItem(
                          imageUrl: 'assets/images/image_photo3.png',
                        )
                      ],
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(1),
                    ),
                    Text(
                      'Interest Place',
                      style: txtBlackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(2),
                    ),
                    Row(
                      children: [
                        CustomInterestPlaceItem(
                          contentText: 'Kids Park',
                        ),
                        CustomInterestPlaceItem(
                          contentText: 'Honor Bridge',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(1),
                    ),
                    Row(
                      children: [
                        CustomInterestPlaceItem(
                          contentText: 'City Museum',
                        ),
                        CustomInterestPlaceItem(
                          contentText: 'Central Mall',
                        ),
                      ],
                    )
                  ],
                ),
              ),

              ///StartBookingSection
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: _sizeScreen.hp(1)),
                child: Row(
                  children: [
                    ///PRICE
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 2.500.000',
                            style: txtBlackTextStyle.copyWith(
                                fontSize: 18, fontWeight: medium),
                          ),
                          SizedBox(
                            height: _sizeScreen.hp(0.5),
                          ),
                          Text(
                            'per orang',
                            style: txtGreyTextStyle.copyWith(fontWeight: light),
                          )
                        ],
                      ),
                    ),

                    ///BOOKButton
                    CustomButton(
                        textButton: 'Book Now',
                        width: _sizeScreen.wp(45),
                        onPressed: () {})
                  ],
                ),
              )
            ],
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
