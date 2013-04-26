part of pagespeedonline_v1_api_client;

class PagespeedapiResource_ extends Resource {

  PagespeedapiResource_(Client client) : super(client) {
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
   * [screenshot] - Indicates if binary data containing a screenshot should be included
   *   Default: false
   *
   * [strategy] - The analysis strategy to use
   *   Allowed values:
   *     desktop - Fetch and analyze the URL for desktop browsers
   *     mobile - Fetch and analyze the URL for mobile devices
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Result> runpagespeed(core.String url, {core.String locale, core.String rule, core.bool screenshot, core.String strategy, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "runPagespeed";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (locale != null) queryParams["locale"] = locale;
    if (rule != null) queryParams["rule"] = rule;
    if (screenshot != null) queryParams["screenshot"] = screenshot;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

