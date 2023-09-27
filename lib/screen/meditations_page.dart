import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditations/widgets/bottom_nav_widget.dart';
import 'package:meditations/constants/constants.dart';
import 'package:meditations/screen/player_page.dart';
import 'package:meditations/widgets/searchbar_widget.dart';
import 'package:meditations/widgets/session_card_widget.dart';
import 'package:meditations/util/extention_farsi_number.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.45,
                decoration: const BoxDecoration(
                  color: kBlueLightColor,
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(
                      'assets/images/meditation_bg.png',
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Lalezar',
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '20 دقیقه آموزش'.farsiNumber,
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Lalezar',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را \nمیتوانید خیلی افزایش دهید و عمر طولانی‌تری\n داشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Yekan',
                        fontSize: 15.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * 0.45,
                        height: 100,
                        child: const BuildSearchBar(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        BuildSessionCard(
                          sessionNumber: 'درس 1',
                          isDone: true,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const VideoPlayePage(),
                              ),
                            );
                          },
                        ),
                        const BuildSessionCard(
                          sessionNumber: 'درس 2',
                        ),
                        const BuildSessionCard(
                          sessionNumber: 'درس 3',
                        ),
                        const BuildSessionCard(
                          sessionNumber: 'درس 4',
                        ),
                        const BuildSessionCard(
                          sessionNumber: 'درس 5',
                        ),
                        const BuildSessionCard(
                          sessionNumber: 'درس 6',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'پیشنهاد ما',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Yekan',
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'یوگای پیشرفته ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Yekan',
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  'پیشرفته از قبل تمرین کنید',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Yekan',
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
