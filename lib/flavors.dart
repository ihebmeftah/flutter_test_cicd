enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'app dev';
      case Flavor.prod:
        return 'app prod';
      default:
        return 'title';
    }
  }
}
