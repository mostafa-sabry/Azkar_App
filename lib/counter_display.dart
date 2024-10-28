// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';

// class CounterDisplay extends StatefulWidget {
//   const CounterDisplay({Key? key}) : super(key: key);

//   @override
//   State<CounterDisplay> createState() => _CounterDisplayState();
// }

// int counter = 0;
// int counterTime = 0;
// int result = 0;
// int goalValue = 33;

// class _CounterDisplayState extends State<CounterDisplay> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 25),
//         const Text(
//           'استغفر الله',
//           style: TextStyle(fontSize: 30),
//         ),
//         const SizedBox(height: 25),
//         Text(
//           '$counter',
//           style: const TextStyle(fontSize: 25),
//         ),
//         const SizedBox(height: 25),
//         GestureDetector(
//           onTap: () {
//             if (counter == goalValue) {
//               counterTime++;
//               counter = 0;
//               result += 33;
//             }
//             counter++;
//           },
//           child: CircularPercentIndicator(
//             radius: 100.0,
//             lineWidth: 10.0,
//             percent: counter / goalValue,
//             center: const Icon(
//               Icons.touch_app,
//               size: 50.0,
//             ),
//             backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
//             progressColor: Theme.of(context).primaryColor,
//           ),
//         ),
//       ],
//     );
//   }
// }
