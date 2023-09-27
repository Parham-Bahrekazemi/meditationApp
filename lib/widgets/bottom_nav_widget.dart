import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditations/constants/constants.dart';

class BuildBottomNavItems extends StatelessWidget {
  const BuildBottomNavItems({
    super.key,
    required this.svgSrc,
    required this.title,
    required this.isActive,
    this.onTap,
  });

  final String svgSrc;
  final String title;
  final bool isActive;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SvgPicture.asset('assets/icons/$svgSrc'),
        Text(
          title,
          style: TextStyle(
            color: isActive ? kActiveIconColor : kTextColor,
          ),
        ),
      ],
    );
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      height: 80,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BuildBottomNavItems(
            svgSrc: 'calendar.svg',
            title: 'امروز',
            isActive: true,
          ),
          BuildBottomNavItems(
            svgSrc: 'gym.svg',
            title: 'تمرینات',
            isActive: true,
          ),
          BuildBottomNavItems(
            svgSrc: 'Settings.svg',
            title: 'تنظیمات',
            isActive: true,
          ),
          // BuildBottomNavItems(),
          // BuildBottomNavItems(),
        ],
      ),
    );
  }
}
