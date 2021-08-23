part of 'custom_widgets.dart';

class CustomInterestPlaceItem extends StatelessWidget {
  final String contentText;

  const CustomInterestPlaceItem({Key? key, required this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(
              right: _sizeScreen.wp(1),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icons/icon_check.png'))),
          ),
          Text(
            contentText,
            style: txtBlackTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
