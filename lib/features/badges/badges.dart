import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:skill_loop/features/badges/widget/component.dart';
import 'package:skill_loop/features/badges/widget/shape_badges.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/features/home/widget/bottom_bar.dart';
// import 'package:skill_loop/features/profile/widget/shape_profile.dart';
import 'package:skill_loop/shared/theme.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        title: const Text(
          'Chart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Text(
            'Your Skill Growth Overview',
            style: blackTextStyle.copyWith(fontWeight: reguler, fontSize: 13),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 40,
                sectionsSpace: 2,
                sections: [
                  PieChartSectionData(
                    color: blueLightColor,
                    radius: 70,
                    titleStyle: const TextStyle(
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  PieChartSectionData(
                    color: orange,
                    radius: 70,
                    titleStyle: const TextStyle(
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  PieChartSectionData(
                    color: pink,
                    radius: 70,
                    titleStyle: const TextStyle(
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                ComponentBadges(title: 'Design', color: orange),
                ComponentBadges(title: 'Coding', color: blueLightColor),
                  ]    
              ),
              ComponentBadges(title: 'Comunication', color: pink),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  CustomWidgetBadges(
                    width: 180, 
                    height: 150, 
                    color: purple, 
                    image: 'assets/icon/growth.png', 
                    title: 'Weekly Gowth', 
                    subtitle: '+12%'
                    ),
                    const SizedBox(width: 10,),
                  CustomWidgetBadges(
                    width: 180, 
                    height: 150, 
                    color: orange, 
                    image: 'assets/icon/brain_solid.png', 
                    title: 'Top Skill', 
                    subtitle: 'Comunication +85%'
                    ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  CustomWidgetBadges(
                    width: 180, 
                    height: 150, 
                    color: red, 
                    image: 'assets/icon/growth.png', 
                    title: 'Weekly Gowth', 
                    subtitle: '+12%'
                    ),
                    const SizedBox(width: 10,),
                  CustomWidgetBadges(
                    width: 180, 
                    height: 150, 
                    color: blueLightColor, 
                    image: 'assets/icon/brain_solid.png', 
                    title: 'Top Skill', 
                    subtitle: 'Comunication +85%'
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(currentIndex: 1,), 

    );
  }
}
