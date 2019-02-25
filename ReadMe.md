# balena-timezone

All balena.io devices use the UTC timezone by default, for logs, timing, etc. This
project gives an minimal example of how to set the device timezone within
your application if required. It works for Debian-based systems at the moment.

To set the timezone, find the name of your timezone in the `/usr/share/zoneinfo`
directory ([see info](https://wiki.debian.org/TimeZoneChanges)), or from
[Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)
(the TZ column), and set an environment variable called `TIMEZONE` with that
value, either in the Dockerfile (hardcoded) by `ENV TIMEZONE <value>` or a new
variable called `TIMEZONE` in the [dashboard](https://docs.balena.io/management/env-vars/).

For example set `TIMEZONE` to `Europe/London` to follow the London time, or
`Asia/Tokyo` if you are in Tokyo, etc.

If you want to use this example in your project, add your application's own
start to the marked section in the start script.

## License

Copyright 2017-2019 Balena Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
