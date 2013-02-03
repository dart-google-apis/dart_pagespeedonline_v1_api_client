part of pagespeedonline_v1_api_client;

class PagespeedapiResource extends Resource {

  PagespeedapiResource(Client client) : super(client) {
  }

  /**
   * Runs Page Speed analysis on the page at the specified URL, and returns a Page Speed score, a list of suggestions to make that page faster, and other information.
   *
   * [url] - The URL to fetch and analyze
   *
   * [locale] - The locale used to localize formatted results
   *
   * [rule] - A Page Speed rule to run; if none are given, all rules are run
   *
   * [strategy] - The analysis strategy to use
   *   Allowed values:
   *     desktop - Fetch and analyze the URL for desktop browsers
   *     mobile - Fetch and analyze the URL for mobile devices
   *
   * [optParams] - Additional query parameters
   */
  Future<Result> runpagespeed(String url, {String locale, String rule, String strategy, Map optParams}) {
    var completer = new Completer();
    var url = "runPagespeed";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (locale != null) queryParams["locale"] = locale;
    if (rule != null) queryParams["rule"] = rule;
    if (strategy != null && !["desktop", "mobile"].contains(strategy)) {
      paramErrors.add("Allowed values for strategy: desktop, mobile");
    }
    if (strategy != null) queryParams["strategy"] = strategy;
    if (url == null) paramErrors.add("url is required");
    if (url != null) queryParams["url"] = url;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Result.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

