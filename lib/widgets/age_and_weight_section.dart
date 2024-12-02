import 'package:bmi_app/widgets/age_and_weight_item.dart';
import 'package:flutter/material.dart';

class AgeAndWeightSection extends StatefulWidget {
  const AgeAndWeightSection({super.key});

  @override
  State<AgeAndWeightSection> createState() => _AgeAndWeightSectionState();
}

class _AgeAndWeightSectionState extends State<AgeAndWeightSection> {
  int weight = 60;
  int age = 29;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AgeAndWeightItem(
            label: 'WEIGHT',
            number: weight,
            addOnPressed: () {
              setState(() {
                weight++;
              });
            },
            removeOnPressed: () {
              setState(() {
                weight--;
              });
            },
          ),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: AgeAndWeightItem(
            label: 'AGE',
            number: age,
            addOnPressed: () {
              setState(() {
                age += 1;
              });
            },
            removeOnPressed: () {
              setState(() {
                age -= 1;
              });
            },
          ),
        ),
      ],
    );
  }
}
