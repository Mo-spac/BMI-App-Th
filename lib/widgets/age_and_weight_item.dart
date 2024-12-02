import 'package:flutter/material.dart';

class AgeAndWeightItem extends StatelessWidget {
  const AgeAndWeightItem({
    super.key,
    required this.label,
    required this.number,
    this.addOnPressed,
    this.removeOnPressed,
  });

  final String label;
  final int number;
  final void Function()? addOnPressed;
  final void Function()? removeOnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xff17172F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '$number',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                color: const Color.fromARGB(255, 231, 32, 18),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.grey[700],
                  ),
                ),
                onPressed: removeOnPressed,
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
              IconButton(
                color: const Color.fromARGB(255, 231, 32, 18),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                  Colors.grey[700],
                )),
                onPressed: addOnPressed,
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
