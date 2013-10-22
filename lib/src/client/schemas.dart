part of pagespeedonline_v1_api;

class Result {

  /** Localized Page Speed results. Contains a ruleResults entry for each Page Speed rule instantiated and run by the server. */
  ResultFormattedResults formattedResults;

  /** Canonicalized and final URL for the document, after following page redirects (if any). */
  core.String id;

  /** List of rules that were specified in the request, but which the server did not know how to instantiate. */
  core.List<core.String> invalidRules;

  /** Kind of result. */
  core.String kind;

  /** Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc. */
  ResultPageStats pageStats;

  /** Echo of certain request parameters. */
  ResultRequest request;

  /** Response code for the document. 200 indicates a normal page load. 4xx/5xx indicates an error. */
  core.int responseCode;

  /** The Page Speed Score (0-100), which indicates how much faster a page could be. A high score indicates little room for improvement, while a lower score indicates more room for improvement. */
  core.int score;

  /** Base64 encoded screenshot of the page that was analyzed. */
  ResultScreenshot screenshot;

  /** Title of the page, as displayed in the browser's title bar. */
  core.String title;

  /** The version of the Page Speed SDK used to generate these results. */
  ResultVersion version;

  /** Create new Result from JSON data */
  Result.fromJson(core.Map json) {
    if (json.containsKey("formattedResults")) {
      formattedResults = new ResultFormattedResults.fromJson(json["formattedResults"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("invalidRules")) {
      invalidRules = json["invalidRules"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageStats")) {
      pageStats = new ResultPageStats.fromJson(json["pageStats"]);
    }
    if (json.containsKey("request")) {
      request = new ResultRequest.fromJson(json["request"]);
    }
    if (json.containsKey("responseCode")) {
      responseCode = json["responseCode"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
    if (json.containsKey("screenshot")) {
      screenshot = new ResultScreenshot.fromJson(json["screenshot"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("version")) {
      version = new ResultVersion.fromJson(json["version"]);
    }
  }

  /** Create JSON Object for Result */
  core.Map toJson() {
    var output = new core.Map();

    if (formattedResults != null) {
      output["formattedResults"] = formattedResults.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (invalidRules != null) {
      output["invalidRules"] = invalidRules.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageStats != null) {
      output["pageStats"] = pageStats.toJson();
    }
    if (request != null) {
      output["request"] = request.toJson();
    }
    if (responseCode != null) {
      output["responseCode"] = responseCode;
    }
    if (score != null) {
      output["score"] = score;
    }
    if (screenshot != null) {
      output["screenshot"] = screenshot.toJson();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Localized Page Speed results. Contains a ruleResults entry for each Page Speed rule instantiated and run by the server. */
class ResultFormattedResults {

  /** The locale of the formattedResults, e.g. "en_US". */
  core.String locale;

  /** Dictionary of formatted rule results, with one entry for each Page Speed rule instantiated and run by the server. */
  core.Map<core.String, ResultFormattedResultsRuleResults> ruleResults;

  /** Create new ResultFormattedResults from JSON data */
  ResultFormattedResults.fromJson(core.Map json) {
    if (json.containsKey("locale")) {
      locale = json["locale"];
    }
    if (json.containsKey("ruleResults")) {
      ruleResults = _mapMap(json["ruleResults"], (ruleResultsItem) => new ResultFormattedResultsRuleResults.fromJson(ruleResultsItem));
    }
  }

  /** Create JSON Object for ResultFormattedResults */
  core.Map toJson() {
    var output = new core.Map();

    if (locale != null) {
      output["locale"] = locale;
    }
    if (ruleResults != null) {
      output["ruleResults"] = _mapMap(ruleResults, (ruleResultsItem) => ruleResultsItem.toJson());
    }

    return output;
  }

  /** Return String representation of ResultFormattedResults */
  core.String toString() => JSON.encode(this.toJson());

}

/** The enum-like identifier for this rule. For instance "EnableKeepAlive" or "AvoidCssImport". Not localized. */
class ResultFormattedResultsRuleResults {

  /** Localized name of the rule, intended for presentation to a user. */
  core.String localizedRuleName;

  /** The impact (unbounded floating point value) that implementing the suggestions for this rule would have on making the page faster. Impact is comparable between rules to determine which rule's suggestions would have a higher or lower impact on making a page faster. For instance, if enabling compression would save 1MB, while optimizing images would save 500kB, the enable compression rule would have 2x the impact of the image optimization rule, all other things being equal. */
  core.num ruleImpact;

  /** The score (0-100) for this rule. The rule score indicates how well a page implements the recommendations for the given rule. For instance, if none of the compressible resources on a page are compressed, the rule score would be 0, while if all of the compressible resources on a page are compressed, the rule score would be 100. */
  core.int ruleScore;

  /** List of blocks of URLs. Each block may contain a heading and a list of URLs. Each URL may optionally include additional details. */
  core.List<ResultFormattedResultsRuleResultsUrlBlocks> urlBlocks;

  /** Create new ResultFormattedResultsRuleResults from JSON data */
  ResultFormattedResultsRuleResults.fromJson(core.Map json) {
    if (json.containsKey("localizedRuleName")) {
      localizedRuleName = json["localizedRuleName"];
    }
    if (json.containsKey("ruleImpact")) {
      ruleImpact = json["ruleImpact"];
    }
    if (json.containsKey("ruleScore")) {
      ruleScore = json["ruleScore"];
    }
    if (json.containsKey("urlBlocks")) {
      urlBlocks = json["urlBlocks"].map((urlBlocksItem) => new ResultFormattedResultsRuleResultsUrlBlocks.fromJson(urlBlocksItem)).toList();
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResults */
  core.Map toJson() {
    var output = new core.Map();

    if (localizedRuleName != null) {
      output["localizedRuleName"] = localizedRuleName;
    }
    if (ruleImpact != null) {
      output["ruleImpact"] = ruleImpact;
    }
    if (ruleScore != null) {
      output["ruleScore"] = ruleScore;
    }
    if (urlBlocks != null) {
      output["urlBlocks"] = urlBlocks.map((urlBlocksItem) => urlBlocksItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResults */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultFormattedResultsRuleResultsUrlBlocks {

  /** Heading to be displayed with the list of URLs. */
  ResultFormattedResultsRuleResultsUrlBlocksHeader header;

  /** List of entries that provide information about URLs in the url block. Optional. */
  core.List<ResultFormattedResultsRuleResultsUrlBlocksUrls> urls;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocks from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocks.fromJson(core.Map json) {
    if (json.containsKey("header")) {
      header = new ResultFormattedResultsRuleResultsUrlBlocksHeader.fromJson(json["header"]);
    }
    if (json.containsKey("urls")) {
      urls = json["urls"].map((urlsItem) => new ResultFormattedResultsRuleResultsUrlBlocksUrls.fromJson(urlsItem)).toList();
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocks */
  core.Map toJson() {
    var output = new core.Map();

    if (header != null) {
      output["header"] = header.toJson();
    }
    if (urls != null) {
      output["urls"] = urls.map((urlsItem) => urlsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocks */
  core.String toString() => JSON.encode(this.toJson());

}

/** Heading to be displayed with the list of URLs. */
class ResultFormattedResultsRuleResultsUrlBlocksHeader {

  /** List of arguments for the format string. */
  core.List<ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs> args;

  /** A localized format string with $N placeholders, where N is the 1-indexed argument number, e.g. 'Minifying the following $1 resources would save a total of $2 bytes'. */
  core.String format;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksHeader from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksHeader.fromJson(core.Map json) {
    if (json.containsKey("args")) {
      args = json["args"].map((argsItem) => new ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs.fromJson(argsItem)).toList();
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksHeader */
  core.Map toJson() {
    var output = new core.Map();

    if (args != null) {
      output["args"] = args.map((argsItem) => argsItem.toJson()).toList();
    }
    if (format != null) {
      output["format"] = format;
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksHeader */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs {

  /** Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, or DURATION. */
  core.String type;

  /** Argument value, as a localized string. */
  core.String value;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksHeaderArgs */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultFormattedResultsRuleResultsUrlBlocksUrls {

  /** List of entries that provide additional details about a single URL. Optional. */
  core.List<ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails> details;

  /** A format string that gives information about the URL, and a list of arguments for that format string. */
  ResultFormattedResultsRuleResultsUrlBlocksUrlsResult result;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksUrls from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksUrls.fromJson(core.Map json) {
    if (json.containsKey("details")) {
      details = json["details"].map((detailsItem) => new ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails.fromJson(detailsItem)).toList();
    }
    if (json.containsKey("result")) {
      result = new ResultFormattedResultsRuleResultsUrlBlocksUrlsResult.fromJson(json["result"]);
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksUrls */
  core.Map toJson() {
    var output = new core.Map();

    if (details != null) {
      output["details"] = details.map((detailsItem) => detailsItem.toJson()).toList();
    }
    if (result != null) {
      output["result"] = result.toJson();
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksUrls */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails {

  /** List of arguments for the format string. */
  core.List<ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs> args;

  /** A localized format string with $N placeholders, where N is the 1-indexed argument number, e.g. 'Unnecessary metadata for this resource adds an additional $1 bytes to its download size'. */
  core.String format;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails.fromJson(core.Map json) {
    if (json.containsKey("args")) {
      args = json["args"].map((argsItem) => new ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs.fromJson(argsItem)).toList();
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (args != null) {
      output["args"] = args.map((argsItem) => argsItem.toJson()).toList();
    }
    if (format != null) {
      output["format"] = format;
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksUrlsDetails */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs {

  /** Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, or DURATION. */
  core.String type;

  /** Argument value, as a localized string. */
  core.String value;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksUrlsDetailsArgs */
  core.String toString() => JSON.encode(this.toJson());

}

/** A format string that gives information about the URL, and a list of arguments for that format string. */
class ResultFormattedResultsRuleResultsUrlBlocksUrlsResult {

  /** List of arguments for the format string. */
  core.List<ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs> args;

  /** A localized format string with $N placeholders, where N is the 1-indexed argument number, e.g. 'Minifying the resource at URL $1 can save $2 bytes'. */
  core.String format;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksUrlsResult from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksUrlsResult.fromJson(core.Map json) {
    if (json.containsKey("args")) {
      args = json["args"].map((argsItem) => new ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs.fromJson(argsItem)).toList();
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksUrlsResult */
  core.Map toJson() {
    var output = new core.Map();

    if (args != null) {
      output["args"] = args.map((argsItem) => argsItem.toJson()).toList();
    }
    if (format != null) {
      output["format"] = format;
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksUrlsResult */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs {

  /** Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, or DURATION. */
  core.String type;

  /** Argument value, as a localized string. */
  core.String value;

  /** Create new ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs from JSON data */
  ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ResultFormattedResultsRuleResultsUrlBlocksUrlsResultArgs */
  core.String toString() => JSON.encode(this.toJson());

}

/** Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc. */
class ResultPageStats {

  /** Number of uncompressed response bytes for CSS resources on the page. */
  core.int cssResponseBytes;

  /** Number of response bytes for flash resources on the page. */
  core.int flashResponseBytes;

  /** Number of uncompressed response bytes for the main HTML document and all iframes on the page. */
  core.int htmlResponseBytes;

  /** Number of response bytes for image resources on the page. */
  core.int imageResponseBytes;

  /** Number of uncompressed response bytes for JS resources on the page. */
  core.int javascriptResponseBytes;

  /** Number of CSS resources referenced by the page. */
  core.int numberCssResources;

  /** Number of unique hosts referenced by the page. */
  core.int numberHosts;

  /** Number of JavaScript resources referenced by the page. */
  core.int numberJsResources;

  /** Number of HTTP resources loaded by the page. */
  core.int numberResources;

  /** Number of static (i.e. cacheable) resources on the page. */
  core.int numberStaticResources;

  /** Number of response bytes for other resources on the page. */
  core.int otherResponseBytes;

  /** Number of uncompressed response bytes for text resources not covered by other statistics (i.e non-HTML, non-script, non-CSS resources) on the page. */
  core.int textResponseBytes;

  /** Total size of all request bytes sent by the page. */
  core.int totalRequestBytes;

  /** Create new ResultPageStats from JSON data */
  ResultPageStats.fromJson(core.Map json) {
    if (json.containsKey("cssResponseBytes")) {
      cssResponseBytes = (json["cssResponseBytes"] is core.String) ? core.int.parse(json["cssResponseBytes"]) : json["cssResponseBytes"];
    }
    if (json.containsKey("flashResponseBytes")) {
      flashResponseBytes = (json["flashResponseBytes"] is core.String) ? core.int.parse(json["flashResponseBytes"]) : json["flashResponseBytes"];
    }
    if (json.containsKey("htmlResponseBytes")) {
      htmlResponseBytes = (json["htmlResponseBytes"] is core.String) ? core.int.parse(json["htmlResponseBytes"]) : json["htmlResponseBytes"];
    }
    if (json.containsKey("imageResponseBytes")) {
      imageResponseBytes = (json["imageResponseBytes"] is core.String) ? core.int.parse(json["imageResponseBytes"]) : json["imageResponseBytes"];
    }
    if (json.containsKey("javascriptResponseBytes")) {
      javascriptResponseBytes = (json["javascriptResponseBytes"] is core.String) ? core.int.parse(json["javascriptResponseBytes"]) : json["javascriptResponseBytes"];
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
      otherResponseBytes = (json["otherResponseBytes"] is core.String) ? core.int.parse(json["otherResponseBytes"]) : json["otherResponseBytes"];
    }
    if (json.containsKey("textResponseBytes")) {
      textResponseBytes = (json["textResponseBytes"] is core.String) ? core.int.parse(json["textResponseBytes"]) : json["textResponseBytes"];
    }
    if (json.containsKey("totalRequestBytes")) {
      totalRequestBytes = (json["totalRequestBytes"] is core.String) ? core.int.parse(json["totalRequestBytes"]) : json["totalRequestBytes"];
    }
  }

  /** Create JSON Object for ResultPageStats */
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Echo of certain request parameters. */
class ResultRequest {

  core.String filter_third_party_resources;

  core.String strategy;

  core.String url;

  /** Create new ResultRequest from JSON data */
  ResultRequest.fromJson(core.Map json) {
    if (json.containsKey("filter_third_party_resources")) {
      filter_third_party_resources = json["filter_third_party_resources"];
    }
    if (json.containsKey("strategy")) {
      strategy = json["strategy"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ResultRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (filter_third_party_resources != null) {
      output["filter_third_party_resources"] = filter_third_party_resources;
    }
    if (strategy != null) {
      output["strategy"] = strategy;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ResultRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Base64 encoded screenshot of the page that was analyzed. */
class ResultScreenshot {

  /** Image data base64 encoded. */
  core.String data;

  /** Height of screenshot in pixels. */
  core.int height;

  /** Mime type of image data. E.g. "image/jpeg". */
  core.String mime_type;

  /** Width of screenshot in pixels. */
  core.int width;

  /** Create new ResultScreenshot from JSON data */
  ResultScreenshot.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("mime_type")) {
      mime_type = json["mime_type"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for ResultScreenshot */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data;
    }
    if (height != null) {
      output["height"] = height;
    }
    if (mime_type != null) {
      output["mime_type"] = mime_type;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of ResultScreenshot */
  core.String toString() => JSON.encode(this.toJson());

}

/** The version of the Page Speed SDK used to generate these results. */
class ResultVersion {

  /** The major version number of the Page Speed SDK used to generate these results. */
  core.int major;

  /** The minor version number of the Page Speed SDK used to generate these results. */
  core.int minor;

  /** Create new ResultVersion from JSON data */
  ResultVersion.fromJson(core.Map json) {
    if (json.containsKey("major")) {
      major = json["major"];
    }
    if (json.containsKey("minor")) {
      minor = json["minor"];
    }
  }

  /** Create JSON Object for ResultVersion */
  core.Map toJson() {
    var output = new core.Map();

    if (major != null) {
      output["major"] = major;
    }
    if (minor != null) {
      output["minor"] = minor;
    }

    return output;
  }

  /** Return String representation of ResultVersion */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
