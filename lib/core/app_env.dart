class AppEnv {
  const AppEnv._();
  static const apiEndpoint = String.fromEnvironment('API_ENDPOINT');
  static const apiKey = String.fromEnvironment('API_KEY');
}
