class ProviderWidget {
  const ProviderWidget();
}

@ProviderWidget()
class Stuff {}

class Test {
  dynamic init() {
    Stuff y = new Stuff();
  }
}
