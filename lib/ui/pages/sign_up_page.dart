import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerText() {
      var _sizeScreen = Screen(MediaQuery.of(context).size);
      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.sizeHeight(10)),
        child: Text(
          'Join us and get\nyour next journey',
          style: kBlackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget formArea() {
      var _sizeScreen = Screen(MediaQuery.of(context).size);

      Widget fullNameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: _sizeScreen.sizeHeight(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name'),
              SizedBox(
                height: _sizeScreen.sizeHeight(6),
              ),
              TextFormField(
                cursorColor: kBlackColor,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: 'Your Full Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: _sizeScreen.sizeHeight(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email address'),
              SizedBox(
                height: _sizeScreen.sizeHeight(6),
              ),
              TextFormField(
                cursorColor: kBlackColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Your E-Mail Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: _sizeScreen.sizeHeight(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password'),
              SizedBox(
                height: _sizeScreen.sizeHeight(6),
              ),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget confirmationPasswordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: _sizeScreen.sizeHeight(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Confirmation Password'),
              SizedBox(
                height: _sizeScreen.sizeHeight(6),
              ),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your Password Confirmation',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget buttonSubmit() {
        return Container(
          width: double.infinity,
          height: _sizeScreen.sizeHeight(30),
          child: TextButton(
            onPressed: () => Navigator.pushNamed(context, '/review_result_sign_up'),
            child: Text(
              'Get Started',
              style: kWhiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius))),
          ),
        );
      }

      Widget tacButton() {
        var _sizeScreen = Screen(MediaQuery.of(context).size);
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
              top: _sizeScreen.sizeHeight(20),),
          child: Text(
            'Terms and Conditions',
            style: kGreyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.sizeHeight(10)),
        padding: EdgeInsets.symmetric(
            horizontal: _sizeScreen.sizeHeight(10),
            vertical: _sizeScreen.sizeWidth(20)),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(
              defaultRadius,
            )),
        child: Column(
          children: [
            fullNameInput(),
            emailInput(),
            passwordInput(),
            confirmationPasswordInput(),
            buttonSubmit(),
            tacButton()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [headerText(), formArea()],
          ),
        ),
      ),
    );
  }
}
