import 'package:flutter/material.dart';
import '../../utils/utils.dart';

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
                  style: kWhiteTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 32),
                ),
                SizedBox(
                  height: _sizeScreen.sizeHeight(10),
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style:
                      kWhiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: _sizeScreen.sizeHeight(25),
                      bottom: _sizeScreen.sizeHeight(35)),
                  width: _sizeScreen.sizeWidth(220),
                  height: _sizeScreen.sizeHeight(30),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      style: kWhiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
