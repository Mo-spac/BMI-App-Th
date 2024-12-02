import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  double sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff17172F)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${sliderValue.toStringAsFixed(0)} cm',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Slider(
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
