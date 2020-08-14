class Injector {
  Injector();

  Map mappings = {};

  get<T>() {
    if (this.mappings.containsKey(T.toString())) {
      return mappings[T.toString()];
    } else {
      throw ArgumentError(
          'Argument of type ${T.toString()} is not provided by the Injector');
    }
  }

  map<T>(dynamic o) {
    this.mappings[T.toString()] = o;
  }
}

Injector injector = new Injector();

// https://rlbisbe.net/2014/08/04/creating-a-dependency-injection-engine-with-c/
