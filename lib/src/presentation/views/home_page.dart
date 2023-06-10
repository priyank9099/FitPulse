import 'package:flutter/material.dart';
import '../widgets/home_page/exercise_card.dart';
import '../widgets/home_page/home_header.dart';
import '../widgets/home_page/status_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF7F7F7),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeHeader(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Today's Exercise",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                ExerciseCard(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Today's Status",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                StatusCard(
                  screenWidth: screenWidth,
                  title: 'Calories Loss',
                  primaryColor: const Color(0xffEA7E43),
                  cardBackgroundColor: const Color(0xffFCDCB2),
                  cardValue: '15',
                  icon: Icons.local_fire_department,
                  measure: 'Kcal',
                ),
                const SizedBox(
                  height: 20,
                ),
                StatusCard(
                  screenWidth: screenWidth,
                  title: 'Weight Loss',
                  primaryColor: const Color(0xffA087D3),
                  cardBackgroundColor: const Color(0xffE0D2FD),
                  cardValue: '12',
                  icon: Icons.monitor_weight_outlined,
                  measure: 'Kg',
                ),
                const SizedBox(height: 75),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
