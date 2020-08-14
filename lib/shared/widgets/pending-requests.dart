// import 'package:flutter/material.dart';
// import 'package:zischify/di-bottstrapper.dart';
// import 'package:zischify/models/RequestData.dart';
// import 'package:zischify/services/auth.service.dart';
// import 'package:zischify/services/request.service.dart';
// import 'package:zischify/shared/widgets/request-information-box.dart';
// import 'package:zischify/src/styles/heading.dart';
// import 'package:zischify/src/styles/SubTitle.dart';
// import 'package:zischify/src/styles/styles.dart';

// class PendingRequestsWidget extends StatefulWidget {
//   @override
//   PendingRequestState createState() => PendingRequestState();
// }

// class PendingRequestState extends State<PendingRequestsWidget> {
//   final RequestService _requestService = injector.get<RequestService>();
//   List<Map<String, dynamic>> _requests = [];

//   @override
//   initState() {
//     super.initState();

//     _requestService
//         .getPendingRequests()
//         .listen((data) => setState(() => _requests = data));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 500,
//       color: Palette.blackPrimary,
//       child: Column(children: [
//         Padding(
//             padding: EdgeInsets.only(bottom: 20),
//             child: h3('Pending Zisch Requests',
//                 style: TextStyle(
//                     color: Palette.rbYellow(op: 0.9),
//                     fontWeight: FontWeight.w700))),
//         Expanded(
//             child: _requests?.length != 0
//                 ? ListView.builder(
//                     itemCount: _requests.length,
//                     itemBuilder: (BuildContext context, int idx) {
//                       var data = _requests[idx];
//                       print('hey');
//                       print(data);
//                       return Center(child: RequestInformationBoxWidget(data()));
//                     })
//                 : null)
//       ]),
//     );
//   }
// }
