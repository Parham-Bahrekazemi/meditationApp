import 'package:flutter/material.dart';
import 'package:meditations/constants/constants.dart';
import 'package:meditations/util/extention_farsi_number.dart';

class BuildSessionCard extends StatelessWidget {
  const BuildSessionCard({
    super.key,
    required this.sessionNumber,
    this.isDone = false,
    this.onTap,
  });

  final VoidCallback? onTap;

  final String sessionNumber;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        sessionNumber.farsiNumber,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sans',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kBlueColor,
                          ),
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
