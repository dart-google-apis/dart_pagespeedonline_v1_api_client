library pagespeedonline_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_pagespeedonline_v1_api/src/browser_client.dart';
import "package:google_pagespeedonline_v1_api/pagespeedonline_v1_api_client.dart";

/** Lets you analyze the performance of a web page and get tailored suggestions to make that page faster. */
@deprecated
class Pagespeedonline extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Pagespeedonline([oauth.OAuth2 this.auth]);
}
