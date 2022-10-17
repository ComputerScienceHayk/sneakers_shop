import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    required this.onChange,
    required this.iconList,
    super.key,
    this.defaultSelectedIndex = 0,
    this.backgroundColor = AppColors.white,
    this.selectedColor = AppColors.red,
    this.unselectedColor = AppColors.cardGrey,
    this.sizeIcon = 24,
    this.showLabel = true,
  });

  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  final Color backgroundColor;
  final Color selectedColor;
  final Color unselectedColor;
  final double sizeIcon;
  final bool showLabel;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
      ),
      child: Row(
        children: navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        _selectedIndex = index;
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / _iconList.length,
            padding: const EdgeInsets.only(bottom: 8, top: 16),
            child: Icon(
              icon,
              size: widget.sizeIcon,
              color: _selectedIndex == index
                  ? widget.selectedColor
                  : widget.unselectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
