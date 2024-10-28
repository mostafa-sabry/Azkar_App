// import 'package:azkar_app/goal_button_widget.dart';
// import 'package:flutter/material.dart';

// class GoalSelector extends StatefulWidget {
//   final Color mainColor;
//   const GoalSelector({Key? key, required this.mainColor}) : super(key: key);

//   @override
//   State<GoalSelector> createState() => _GoalSelectorState();
// }
// int counter = 0;
// int counterTime = 0;
// int result = 0;
// int goalValue = 33;

// class _GoalSelectorState extends State<GoalSelector> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: widget.mainColor,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const Text(
//             'الهدف',
//             style: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   if (goalValue > 0) {
//                     goalValue--;
//                   }
//                 },
//                 icon: const Icon(
//                   Icons.remove_circle,
//                   color: Colors.white,
//                 ),
//               ),
//               Text(
//                 goalValue.toString(),
//                 style: const TextStyle(color: Colors.white, fontSize: 30),
//               ),
//               IconButton(
//                 onPressed: () {
//                   goalValue++;
//                 },
//                 icon: const Icon(
//                   Icons.add_circle,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GoalButton(label: '33', onTap: () => goalValue = 33),
//               GoalButton(label: '100', onTap: () => goalValue = 100),
//               GoalButton(label: '+100', onTap: () => goalValue += 100),
//               GoalButton(label: '+1000', onTap: () => goalValue += 1000),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // GoalButton Widget
