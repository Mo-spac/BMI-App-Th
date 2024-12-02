import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff17172F)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              'HEIGHT',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${sliderValue.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'cm',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Slider(
              // overlayColor: WidgetStatePropertyAll(Colors.red),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              thumbColor: const Color.fromARGB(255, 231, 32, 18),
              autofocus: true,
              value: sliderValue,
              onChanged: (double newValue) {
                setState(() {
                  sliderValue = newValue;
                });
              },
              min: 0,
              max: 200,
              divisions: 200,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
