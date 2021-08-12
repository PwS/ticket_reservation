import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class ReviewResultSignUpPage extends StatelessWidget {
  const ReviewResultSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);

    Widget userCard() {
      return Container(
        width: _sizeScreen.sizeWidth(300),
        height: _sizeScreen.sizeHeight(110),
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/image_card.png')),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: kWhiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'PwS',
                        style: kWhiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/icon_airplane.png'))),
                ),
                Text(
                  'Pay',
                  style: kWhiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            SizedBox(
              height: _sizeScreen.sizeHeight(25),
            ),
            Text(
              'Balance',
              style: kWhiteTextStyle.copyWith(fontWeight: light),
            ),
            Text(
              'IDR 280.000.000',
              style: kWhiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            )
          ],
        ),
      );
    }

    Widget tittleStuff() {
      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.sizeHeight(40)),
        child: Text(
          'Big Bonus 🎉',
          style: kBlackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget subTittleStuff() {
      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.sizeHeight(5)),
        child: Text(
          'We give you early credit so that \nyou can buy a flight ticket',
          style: kGreyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonStart() {
      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.sizeHeight(25)),
        width: _sizeScreen.sizeWidth(220),
        height: _sizeScreen.sizeHeight(27),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          onPressed: () => Navigator.pushNamed(context, '/home'),
          child: Text(
            'Go To DashBoard',
            style: kWhiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userCard(),
            tittleStuff(),
            subTittleStuff(),
            buttonStart(),
          ],
        ),
      ),
    );
  }
}
