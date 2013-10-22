part of pagespeedonline_v1_api;

class PagespeedapiResource_ {

  final Client _client;

  PagespeedapiResource_(Client client) :
      _client = client;

  /**
   * Runs Page Speed analysis on the page at the specified URL, and returns a Page Speed score, a list of suggestions to make that page faster, and other information.
   *
   * [url] - The URL to fetch and analyze
   *
   * [filter_third_party_resources] - Indicates if third party resources should be filtered out before PageSpeed analysis.
   *   Default: false
   *
   * [locale] - The locale used to localize formatted results
   *
   * [rule] - A Page Speed rule to run; if none are given, all rules are run
   *   Repeated values: allowed
   *
   * [screenshot] - Indicates if binary data containing a screenshot should be included
   *   Default: false
   *
   * [snapshots] - Indicates if binary data containing snapshot images should be included
   *   Default: false
   *
   * [strategy] - The analysis strategy to use
   *   Allowed values:
   *     desktop - Fetch and analyze the URL for desktop browsers
   *     mobile - Fetch and analyze the URL for mobile devices
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Result> runpagespeed(core.String url, {core.bool filter_third_party_resources, core.String locale, core.List<core.String> rule, core.bool screenshot, core.bool snapshots, core.String strategy, core.Map optParams}) {
    var url = "runPagespeed";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filter_third_party_resources != null) queryParams["filter_third_party_resources"] = filter_third_party_resources;
    if (locale != null) queryParams["locale"] = locale;
    if (rule != null) queryParams["rule"] = rule;
    if (screenshot != null) queryParams["screenshot"] = screenshot;
    if (snapshots != null) queryParams["snapshots"] = snapshots;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Result.fromJson(data));
  }
}

