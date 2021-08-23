import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import '../../utils/utils.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image_get_started.png',
                    ),
                    fit: BoxFit.fill)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: txtWhiteTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 32),
                ),
                SizedBox(
                  height: _sizeScreen.hp(2),
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: txtWhiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  textButton: 'Get Started',
                  width: _sizeScreen.wp(56),
                  margin: EdgeInsets.only(
                      top: _sizeScreen.hp(12), bottom: _sizeScreen.hp(6)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
