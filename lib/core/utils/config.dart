enum Environment { dev, qa, prod }

class AppConfig {
  AppConfig._();

  // init dependencies needed during the runApp process
  static Future<void> initDependencies({
    Environment environment = Environment.dev,
  }) async {
    // firebase initialization
    // await Firebase.initializeApp();
    // set the environment to be used
    // AppConfig.setEnvironment(environment);
    // init service locator
    // await service_locator.setupLocator();
  }

  // constants values to be given based on the environment set
  static late Map<String, String> _constants;
}
