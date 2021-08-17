part of 'custom_widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final String tittleText;
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;

  const CustomTextFormField(
      {Key? key,
      required this.tittleText,
      required this.hintText,
      this.obscureText = false,
      required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);

    return Container(
      margin: EdgeInsets.only(bottom: _sizeScreen.hp(2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tittleText),
          SizedBox(
            height: _sizeScreen.hp(2),
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            keyboardType: textInputType,
            decoration: InputDecoration(
                hintText: hintText,
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
}
