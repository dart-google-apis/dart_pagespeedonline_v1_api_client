part of pagespeedonline_v1_api_client;

class Result {

  /** Localized Page Speed results. Contains a ruleResults entry for each Page Speed rule instantiated and run by the server. */
  ResultFormattedResults formattedResults;

  /** Canonicalized and final URL for the document, after following page redirects (if any). */
  String id;

  /** List of rules that were specified in the request, but which the server did not know how to instantiate. */
  List<String> invalidRules;

  /** Kind of result. */
  String kind;

  /** Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc. */
  ResultPageStats pageStats;

  /** Response code for the document. 200 indicates a normal page load. 4xx/5xx indicates an error. */
  int responseCode;

  /** The Page Speed Score (0-100), which indicates how much faster a page could be. A high score indicates little room for improvement, while a lower score indicates more room for improvement. */
  int score;

  /** Title of the page, as displayed in the browser's title bar. */
  String title;

  /** The version of the Page Speed SDK used to generate these results. */
  ResultVersion version;

  /** Create new Result from JSON data */
  Result.fromJson(Map json) {
    if (json.containsKey("formattedResults")) {
      formattedResults = new ResultFormattedResults.fromJson(json["formattedResults"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("invalidRules")) {
      invalidRules = [];
      json["invalidRules"].forEach((item) {
        invalidRules.add(item);
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageStats")) {
      pageStats = new ResultPageStats.fromJson(json["pageStats"]);
    }
    if (json.containsKey("responseCode")) {
      responseCode = json["responseCode"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("version")) {
      version = new ResultVersion.fromJson(json["version"]);
    }
  }

  /** Create JSON Object for Result */
  Map toJson() {
    var output = new Map();

    if (formattedResults != null) {
      output["formattedResults"] = formattedResults.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (invalidRules != null) {
      output["invalidRules"] = new List();
      invalidRules.forEach((item) {
        output["invalidRules"].add(item);
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageStats != null) {
      output["pageStats"] = pageStats.toJson();
    }
    if (responseCode != null) {
      output["responseCode"] = responseCode;
    }
    if (score != null) {
      output["score"] = score;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (version != null) {
      output["version"] = version.toJson();
    }

    return output;
  }

  /** Return String representation of Result */
  String toString() => JSON.stringify(this.toJson());

}

/** The version of the Page Speed SDK used to generate these results. */
class ResultVersion {

  /** The major version number of the Page Speed SDK used to generate these results. */
  int major;

  /** The minor version number of the Page Speed SDK used to generate these results. */
  int minor;

  /** Create new ResultVersion from JSON data */
  ResultVersion.fromJson(Map json) {
    if (json.containsKey("major")) {
      major = json["major"];
    }
    if (json.containsKey("minor")) {
      minor = json["minor"];
    }
  }

  /** Create JSON Object for ResultVersion */
  Map toJson() {
    var output = new Map();

    if (major != null) {
      output["major"] = major;
    }
    if (minor != null) {
      output["minor"] = minor;
    }

    return output;
  }

  /** Return String representation of ResultVersion */
  String toString() => JSON.stringify(this.toJson());

}

/** Localized Page Speed results. Contains a ruleResults entry for each Page Speed rule instantiated and run by the server. */
class ResultFormattedResults {

  /** The locale of the formattedResults, e.g. "en_US". */
  String locale;

  /** Dictionary of formatted rule results, with one entry for each Page Speed rule instantiated and run by the server. */
  ResultFormattedResultsRuleResults ruleResults;

  /** Create new ResultFormattedResults from JSON data */
  ResultFormattedResults.fromJson(Map json) {
    if (json.containsKey("locale")) {
      locale = json["locale"];
    }
    if (json.containsKey("ruleResults")) {
      ruleResults = new ResultFormattedResultsRuleResults.fromJson(json["ruleResults"]);
    }
  }

  /** Create JSON Object for ResultFormattedResults */
  Map toJson() {
    var output = new Map();

    if (locale != null) {
      output["locale"] = locale;
    }
    if (ruleResults != null) {
      output["ruleResults"] = ruleResults.toJson();
    }

    return output;
  }

  /** Return String representation of ResultFormattedResults */
  String toString() => JSON.stringify(this.toJson());

}

/** Dictionary of formatted rule results, with one entry for each Page Speed rule instantiated and run by the server. */
class ResultFormattedResultsRuleResults {

  /** Create new ResultFormattedResultsRuleResults from JSON data */
  ResultFormattedResultsRuleResults.fromJson(Map json) {
  }

  /** Create JSON Object for ResultFormattedResultsRuleResults */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResults */
  String toString() => JSON.stringify(this.toJson());

}

/** Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc. */
class ResultPageStats {

  /** Number of uncompressed response bytes for CSS resources on the page. */
  String cssResponseBytes;

  /** Number of response bytes for flash resources on the page. */
  String flashResponseBytes;

  /** Number of uncompressed response bytes for the main HTML document and all iframes on the page. */
  String htmlResponseBytes;

  /** Number of response bytes for image resources on the page. */
  String imageResponseBytes;

  /** Number of uncompressed response bytes for JS resources on the page. */
  String javascriptResponseBytes;

  /** Number of CSS resources referenced by the page. */
  int numberCssResources;

  /** Number of unique hosts referenced by the page. */
  int numberHosts;

  /** Number of JavaScript resources referenced by the page. */
  int numberJsResources;

  /** Number of HTTP resources loaded by the page. */
  int numberResources;

  /** Number of static (i.e. cacheable) resources on the page. */
  int numberStaticResources;

  /** Number of response bytes for other resources on the page. */
  String otherResponseBytes;

  /** Number of uncompressed response bytes for text resources not covered by other statistics (i.e non-HTML, non-script, non-CSS resources) on the page. */
  String textResponseBytes;

  /** Total size of all request bytes sent by the page. */
  String totalRequestBytes;

  /** Create new ResultPageStats from JSON data */
  ResultPageStats.fromJson(Map json) {
    if (json.containsKey("cssResponseBytes")) {
      cssResponseBytes = json["cssResponseBytes"];
    }
    if (json.containsKey("flashResponseBytes")) {
      flashResponseBytes = json["flashResponseBytes"];
    }
    if (json.containsKey("htmlResponseBytes")) {
      htmlResponseBytes = json["htmlResponseBytes"];
    }
    if (json.containsKey("imageResponseBytes")) {
      imageResponseBytes = json["imageResponseBytes"];
    }
    if (json.containsKey("javascriptResponseBytes")) {
      javascriptResponseBytes = json["javascriptResponseBytes"];
    }
    if (json.containsKey("numberCssResources")) {
      numberCssResources = json["numberCssResources"];
    }
    if (json.containsKey("numberHosts")) {
      numberHosts = json["numberHosts"];
    }
    if (json.containsKey("numberJsResources")) {
      numberJsResources = json["numberJsResources"];
    }
    if (json.containsKey("numberResources")) {
      numberResources = json["numberResources"];
    }
    if (json.containsKey("numberStaticResources")) {
      numberStaticResources = json["numberStaticResources"];
    }
    if (json.containsKey("otherResponseBytes")) {
      otherResponseBytes = json["otherResponseBytes"];
    }
    if (json.containsKey("textResponseBytes")) {
      textResponseBytes = json["textResponseBytes"];
    }
    if (json.containsKey("totalRequestBytes")) {
      totalRequestBytes = json["totalRequestBytes"];
    }
  }

  /** Create JSON Object for ResultPageStats */
  Map toJson() {
    var output = new Map();

    if (cssResponseBytes != null) {
      output["cssResponseBytes"] = cssResponseBytes;
    }
    if (flashResponseBytes != null) {
      output["flashResponseBytes"] = flashResponseBytes;
    }
    if (htmlResponseBytes != null) {
      output["htmlResponseBytes"] = htmlResponseBytes;
    }
    if (imageResponseBytes != null) {
      output["imageResponseBytes"] = imageResponseBytes;
    }
    if (javascriptResponseBytes != null) {
      output["javascriptResponseBytes"] = javascriptResponseBytes;
    }
    if (numberCssResources != null) {
      output["numberCssResources"] = numberCssResources;
    }
    if (numberHosts != null) {
      output["numberHosts"] = numberHosts;
    }
    if (numberJsResources != null) {
      output["numberJsResources"] = numberJsResources;
    }
    if (numberResources != null) {
      output["numberResources"] = numberResources;
    }
    if (numberStaticResources != null) {
      output["numberStaticResources"] = numberStaticResources;
    }
    if (otherResponseBytes != null) {
      output["otherResponseBytes"] = otherResponseBytes;
    }
    if (textResponseBytes != null) {
      output["textResponseBytes"] = textResponseBytes;
    }
    if (totalRequestBytes != null) {
      output["totalRequestBytes"] = totalRequestBytes;
    }

    return output;
  }

  /** Return String representation of ResultPageStats */
  String toString() => JSON.stringify(this.toJson());

}

