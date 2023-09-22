import 'package:flutter/material.dart';
import 'package:travel_app/components/heading.dart';
import 'package:travel_app/components/labelSection.dart';
import 'package:travel_app/components/recommended.dart';
import 'package:travel_app/components/search,dart.dart';
import 'package:travel_app/components/top.dart';
import 'package:travel_app/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea
        (child: Padding(
        padding: EdgeInsets.only(left: medium,top: large,right: medium),
        child: Column(
          children: [
            const HeadingSection(),
            SizedBox(height: medium),
            const SearchSection(),
            SizedBox(height: medium),
            LabelSection(text: 'Recommended', style: heading1),
            SizedBox(height: medium),
            const Recommended(),
            SizedBox(height: medium),
            LabelSection(text: 'Top Destination', style: heading1),
            SizedBox(height: medium),
            TopSection(),
          ],
        ),
      )),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          selectedItemColor: accent,
          unselectedItemColor: icon,
          backgroundColor: white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
              label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label:''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline_rounded),
                label:''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label:''
            ),
          ],
        ),
      ),
    );
  }
}
