library pagespeedonline_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_pagespeedonline_v1_api/src/console_client.dart';

import "package:google_pagespeedonline_v1_api/pagespeedonline_v1_api_client.dart";

/** Lets you analyze the performance of a web page and get tailored suggestions to make that page faster. */
class Pagespeedonline extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Pagespeedonline([oauth2.OAuth2Console this.auth]);
}
