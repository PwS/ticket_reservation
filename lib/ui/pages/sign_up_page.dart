import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import '../../utils/utils.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerText() {
      var _sizeScreen = Screen(MediaQuery.of(context).size);
      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.hp(2)),
        child: Text(
          'Join us and get\nyour next journey',
          style: txtBlackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget formArea() {
      var _sizeScreen = Screen(MediaQuery.of(context).size);

      Widget fullNameInput() {
        return CustomTextFormField(
          tittleText: 'Full Name',
          hintText: 'Your Full Name',
          textInputType: TextInputType.name,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          tittleText: 'Email Address',
          hintText: 'Your E-Mail Address',
          textInputType: TextInputType.emailAddress,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
            tittleText: 'Password',
            hintText: 'Your Password',
            textInputType: TextInputType.visiblePassword,
            obscureText: true);
      }

      Widget confirmationPasswordInput() {
        return CustomTextFormField(
          tittleText: 'Confirmation Password',
          hintText: 'Your Password Confirmation',
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        );
      }

      Widget buttonSubmit() {
        return CustomButton(
          textButton: 'Get Started',
          onPressed: () =>
              Navigator.pushNamed(context, '/review_result_sign_up'),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: _sizeScreen.hp(2)),
        padding: EdgeInsets.symmetric(
            horizontal: _sizeScreen.wp(4), vertical: _sizeScreen.hp(4)),
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
            SizedBox(
              height: _sizeScreen.hp(2),
            ),
            buttonSubmit(),
          ],
        ),
      );
    }

    Widget tacButton() {
      var _sizeScreen = Screen(MediaQuery.of(context).size);
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: _sizeScreen.hp(3),
        ),
        child: Text(
          'Terms and Conditions',
          style: txtGreyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [headerText(), formArea(), tacButton()],
          ),
        ),
      ),
    );
  }
}
