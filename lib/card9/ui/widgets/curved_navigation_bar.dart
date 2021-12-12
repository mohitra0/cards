import 'package:cards/card9/theme/photo_app_colors.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBar extends StatelessWidget {
  const CurvedNavigationBar({
    Key key,
    this.items,
    this.onTap,
    this.unselectedColor = PhotoAppColors.kGrey,
    this.selectedColor = PhotoAppColors.kDarkBlue,
    this.currentIndex = 0,
  })  : assert(
          items.length == 4,
          'The correct functioning of this widget '
          'depends on its items being exactly 4',
        ),
        super(key: key);

  final List<CurvedNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final Color unselectedColor;
  final Color selectedColor;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CurvedClipper(),
      child: Container(
        alignment: const Alignment(0, 1.6),
        height: kToolbarHeight * 1.5,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        //----------------------------------
        // Generate Navigation Items
        //----------------------------------
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            final item = items[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: (index == 0 || index == 3) ? 20.0 : 0),
              child: IconButton(
                onPressed: () => onTap?.call(index),
                color: index == currentIndex ? selectedColor : unselectedColor,
                icon: Icon(
                  index == currentIndex
                      ? item.selectedIconData ?? item.iconData
                      : item.iconData,
                ),
              ),
            );
          })
            ..insert(2, const SizedBox()),
        ),
      ),
    );
  }
}

class CurvedNavigationBarItem {
  const CurvedNavigationBarItem({
    this.iconData,
    this.selectedIconData,
  });

  final IconData iconData;
  final IconData selectedIconData;
}

class _CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..quadraticBezierTo(size.width * .5, kToolbarHeight, size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
