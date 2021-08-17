part of 'custom_widgets.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton(
      {Key? key,
      required this.textButton,
      this.width = double.infinity,
      required this.onPressed,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Container(
      margin: margin,
      width: width,
      height: _sizeScreen.hp(7),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: kWhiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
