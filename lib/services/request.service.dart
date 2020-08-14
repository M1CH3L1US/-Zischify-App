import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:zischify/models/RequestData.dart';

class RequestService {
  final Firestore _db = Firestore.instance;

  Observable<List<Map<String, dynamic>>> getPendingRequests() {
    return Observable.fromFuture(
            _db.collection('pending-requests').getDocuments())
        .map((value) => (value.documents.map((e) => e.data).toList()));
  }
}
