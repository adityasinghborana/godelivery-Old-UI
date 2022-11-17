import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String iconData;
  final Function onTap;
  final bool isSelected;
  BottomNavItem({@required this.iconData, this.onTap, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        icon: Image.asset(iconData,
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            height: 25),
        onPressed: onTap,
      ),
    );
  }
}
