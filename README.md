# google_pagespeedonline_v1_api

### Description

Auto-generated client library for accessing the pagespeedonline v1 API.

#### ![Logo](http://www.google.com/images/icons/product/pagespeed-16.png) PageSpeed Insights API - pagespeedonline v1

Lets you analyze the performance of a web page and get tailored suggestions to make that page faster.

Official API documentation: https://developers.google.com/speed/docs/insights/v1/getting_started

Adding dependency to pubspec.yaml

```
  dependencies:
    google_pagespeedonline_v1_api: '>=0.4.11'
```

For web applications:

```
  import "package:google_pagespeedonline_v1_api/pagespeedonline_v1_api_browser.dart" as pagespeedonlineclient;
```

For console application:

```
  import "package:google_pagespeedonline_v1_api/pagespeedonline_v1_api_console.dart" as pagespeedonlineclient;
```

Working without authentication the following constructor can be called:

```
  var pagespeedonline = new pagespeedonlineclient.Pagespeedonline();
```

To use authentication create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var pagespeedonline = new pagespeedonlineclient.Pagespeedonline(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
