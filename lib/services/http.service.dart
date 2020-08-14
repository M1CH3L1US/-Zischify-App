import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import 'dart:convert';

class HTTPService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Observable<T> get<T>(String url, {Map<String, String> headers: const {}}) {
    return appendHeaders(headers).switchMap(
        (headers) => _responseConsumer<T>(http.get(url, headers: headers)));
  }

  Observable<T> post<T>(String url,
      {Map<String, String> data: const {},
      Map<String, String> headers: const {}}) {
    return appendHeaders(headers).switchMap((headers) =>
        _responseConsumer(http.post(url, body: data, headers: headers)));
  }

  Observable<T> _responseConsumer<T>(Future<http.Response> req) {
    return Observable.fromFuture(req).map((res) => json.decode(res.body) as T);
  }

  Observable<Map<String, String>> appendHeaders(Map<String, String> headers) {
    return Observable.fromFuture(_auth.currentUser())
        .switchMap((user) =>
            Observable.fromFuture(user.getIdToken()).map((res) => res.token))
        .map((token) => ({'Authorization': 'Bearer $token', ...headers}));
  }
}
