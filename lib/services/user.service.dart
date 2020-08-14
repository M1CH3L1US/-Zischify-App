import 'package:rxdart/rxdart.dart';
import 'package:zischify/services/services.dart';
import 'package:zischify/src/di/injector.dart';
import 'package:zischify/src/mappings/mappings.dart';

class UserService {
  AuthService _authService = injector.get<AuthService>();
  HTTPService _http = injector.get<HTTPService>();

  Observable<void> refreshUserProfile() {
    return _http
        .post('${URLConfig.userURL}/refresh')
        .map((profile) => _authService.pushProfile(profile));
  }

  mock() {
    _http.get('${URLConfig.userURL}/mock').listen((event) {
      print(event);
    });
  }
}
