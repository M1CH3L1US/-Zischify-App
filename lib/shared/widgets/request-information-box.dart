// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:zischify/models/RequestData.dart';
// import 'package:zischify/src/styles/heading.dart';
// import 'package:zischify/src/styles/SubTitle.dart';
// import 'package:intl/intl.dart';
// import 'package:zischify/src/styles/styles.dart';

// class RequestInformationBoxWidget extends StatelessWidget {
//   // const RequestInformationBoxWidget({RequestData this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Container(
//       color: Palette.blackHighlight,
//       decoration: BoxDecoration(color: Palette.blackHighlight, boxShadow: [
//         BoxShadow(
//           color: Color.fromRGBO(33, 33, 33, 0.8),
//           offset: Offset(1, 4),
//         )
//       ]),
//       width: MediaQuery.of(context).size.width - 100,
//       height: 120,
//       child: Row(children: [
//         Column(
//           children: [
//             h3(data.comment),
//             Row(children: [
//               Icon(Icons.alarm),
//               sub1("${data.date.hour}:${data.date.minute}")
//             ]),
//             Row(
//               children: [
//                 Icon(Icons.calendar_today),
//                 sub1(DateFormat('DDD, MMMM dd, YYYY').format(data.date))
//               ],
//             ),
//             Divider(),
//             Row(
//               children: [
//                 // Image.network(),
//                 h6(data.userid)
//               ],
//             )
//           ],
//         )
//       ]),
//     ));
//   }
// }
