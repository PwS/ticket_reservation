import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import '../../utils/utils.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class ReviewResultSignUpPage extends StatelessWidget {
  const ReviewResultSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);

    Widget userCard() {
      return Container(
        width: _sizeScreen.wp(77),
        height: _sizeScreen.hp(27),
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
                        style: txtWhiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'PwS',
                        style: txtWhiteTextStyle.copyWith(
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
                  style: txtWhiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            SizedBox(
              height: _sizeScreen.hp(4.5),
            ),
            Text(
              'Balance',
              style: txtWhiteTextStyle.copyWith(fontWeight: light),
            ),
            SizedBox(
              height: _sizeScreen.hp(1),
            ),
            Text(
              'IDR 280.000.000',
              style: txtWhiteTextStyle.copyWith(
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
        margin: EdgeInsets.only(top: _sizeScreen.hp(10)),
        child: Text(
          'Big Bonus 🎉',
          style: txtBlackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget subTittleStuff() {
      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.hp(3)),
        child: Text(
          'We give you early credit so that \nyou can buy a flight ticket',
          style: txtGreyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonStart() {
      return CustomButton(
        textButton: 'Goto Dashboard',
        width: _sizeScreen.wp(56),
        margin: EdgeInsets.only(top: _sizeScreen.hp(6)),
        onPressed: () => Navigator.pushNamed(context, '/dashboard'),
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
