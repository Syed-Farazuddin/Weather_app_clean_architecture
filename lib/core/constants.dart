class Constants {
  static const String apiKey = "6be99bfe41c7aabe4c1915a26620bb59";
  static String url(String city) =>
      "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey";
}
