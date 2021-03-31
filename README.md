# balena-timezone

> NOTE: This project is aimed at setting the container's timezone, as typically that is all that is required.

To set the timezone, find the name of your timezone in the `/usr/share/zoneinfo`
directory ([see info](https://wiki.debian.org/TimeZoneChanges)), or from
[Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)
(the TZ column), and set an environment variable called `TZ` with that
value, either in the Dockerfile (hardcoded) by `ENV TZ <value>` or a new
variable called `TZ` in the [dashboard](https://docs.balena.io/management/env-vars/).

For example set `TZ` to `Europe/London` to follow the London time, or
`Asia/Tokyo` if you are in Tokyo, etc. For reference projects, check Inkyshot's [timezone customisation](https://github.com/balenalabs/inkyshot#timezone). 

This will set the container's timezone to what timezone you have chosen. All 
balena.io devices use the UTC timezone by default, for logs, timing, etc. This
project gives an minimal example of how to set the device timezone within
your application if required. It works for Debian-based systems at the moment.

If you want to use this example in your project, add your application's own
start to the marked section in the start script.
