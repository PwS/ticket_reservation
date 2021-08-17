part of 'custom_widgets.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomButtonNavigationItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: _sizeScreen.wp(6),
          height: _sizeScreen.hp(3),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        Container(
          width: _sizeScreen.wp(6),
          height: _sizeScreen.hp(0.3),
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
