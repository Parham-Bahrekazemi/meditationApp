import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditations/constants/constants.dart';

class BuildCategoryCard extends StatelessWidget {
  const BuildCategoryCard({
    super.key,
    required this.svgSrc,
    required this.title,
    this.onTap,
  });

  final VoidCallback? onTap;

  final String svgSrc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: SvgPicture.asset('assets/icons/$svgSrc'),
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Sans',
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
