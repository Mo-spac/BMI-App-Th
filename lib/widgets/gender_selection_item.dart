import 'package:flutter/material.dart';

class GenderSelectionItem extends StatelessWidget {
  const GenderSelectionItem({
    super.key,
    required this.iconData,
    required this.label,
    this.onTap,
    this.isSelected = false,
  });

  final IconData iconData;
  final String label;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color:
              isSelected ? Color.fromARGB(255, 231, 32, 18) : Color(0xff17172F),
          borderRadius: BorderRadius.circular(12),
        ),
        // height: 150,
        // width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 120,
            ),
            Text(
              label,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
