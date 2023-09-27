import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditations/widgets/bottom_nav_widget.dart';
import 'package:meditations/widgets/category_box_widget.dart';
import 'package:meditations/screen/meditations_page.dart';
import 'package:meditations/widgets/searchbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.45,
              decoration: const BoxDecoration(
                color: Color(0xfff5ceb8),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'سارا عزیز برای مدیتیشن \n آماده ای ؟',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Lalezar',
                          fontSize: 40,
                        ),
                  ),
                  const BuildSearchBar(),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 16 / 14,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        const BuildCategoryCard(
                            svgSrc: 'Hamburger.svg', title: 'رژیم پیشنهادی'),
                        const BuildCategoryCard(
                            svgSrc: 'Excrecises.svg', title: 'نرمش'),
                        BuildCategoryCard(
                          svgSrc: 'Meditation.svg',
                          title: 'مدیتیشن',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MeditationPage(),
                              ),
                            );
                          },
                        ),
                        const BuildCategoryCard(
                            svgSrc: 'yoga.svg', title: 'یوگا'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
