import 'package:zischify/services/auth.service.dart';
import 'package:zischify/src/di/injector.dart';

class DIBootstrapper {
  Injector injector = new Injector();

  DIBootstrapper() {
    injector.map<AuthService>(new AuthService());
  }

  get<T>() {
    return injector.get<T>();
  }
}

final DIBootstrapper injector = DIBootstrapper();
