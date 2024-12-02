import 'package:bmi_app/widgets/age_and_weight_section.dart';
import 'package:bmi_app/widgets/gender_section.dart';
import 'package:bmi_app/widgets/height_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff03051A),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                GenderSection(),
                const SizedBox(height: 32),
                HeightSection(),
                // // Height(),
                const SizedBox(height: 32),
                AgeAndWeightSection(),
                const SizedBox(height: 32),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 32, 18),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
