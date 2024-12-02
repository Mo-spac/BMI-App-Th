import 'package:bmi_app/widgets/gender_selection_item.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  bool isMaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GenderSelectionItem(
            onTap: () {
              setState(() {
                isMaleSelected = true;
              });
            },
            isSelected: isMaleSelected,
            iconData: Icons.male,
            label: 'MALE',
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          child: GenderSelectionItem(
            onTap: () {
              setState(() {
                isMaleSelected = false;
              });
            },
            isSelected: !isMaleSelected,
            iconData: Icons.female,
            label: 'FEMALE',
          ),
        ),
      ],
    );
  }
}
