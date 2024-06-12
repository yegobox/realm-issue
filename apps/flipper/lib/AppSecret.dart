class AppSecrets {
  static const String apihubUat = "";

  static const String mongoApiSecret = "";
  static const String mongoEndPoint = "";
  // static const String apihubUat = "https://uat-apihub.yegobox.com";

  static const String mongoApiKey = "";
  static String appId = "";

  static String apikey = "";

  /// NOTE: now flipper-turbo is included as submodule i.e you can run it so you can
  /// test the api locally in cases where it is needed without waiting for changes to
  // / be deployed at https://uat-apihub.yegobox.com instead use http://10.0.2.2:8083
  /// is the app is running locally with quarkus dev command
  // static const String apihubUat = "http://10.0.2.2:8083";
  /// you might need ngrok to have the url that will cause less trouble on android
  // static const String apihubUat = "http://b8d0-105-179-8-146.ngrok-free.app";
  static const String apihubProd = "";
  static const String commApi = "";

  static const String apiUrlDebug = '';
  static const String apiUrlProd = '';
  static const String debugPassword = '';
  static const String prodPassword = '';
  static const String debugEmail = '';
  static const String prodEmail = '';

  static const String sentryKey = "";
}
