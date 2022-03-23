class MainUtils {
  String checkUrl(initalUrl) {
    String url = initalUrl;
    String googleInitalUrl = "https://www.google.com/search?q=";

    if (url.contains(".com") ||
        url.contains(".in") ||
        url.contains(".co") ||
        url.contains(".net") ||
        url.contains(".org") ||
        url.contains(".ru") ||
        url.contains(".ir") ||
        url.contains(".uk") ||
        url.contains(".au") ||
        url.contains(".us") ||
        url.contains(".ua") ||
        url.contains(".ca")) {
      if (!url.contains("https://")) {
        url = "https://" + url;
      }
    } else {
      url = googleInitalUrl + url;
    }
    print("FINAL URL->>" + url);
    print("URL GOOD ? == " + Uri.parse(url).isAbsolute.toString());
    if (Uri.parse(url).isAbsolute) {
      return url;
    } else {
      return googleInitalUrl;
    }
  }
}
