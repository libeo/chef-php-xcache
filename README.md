Description
===========

Installs the php xcache module. Set good defaults for

Requirements
============

Platform
--------

* Debian 6 and 7
* Ubuntu 12.04 and 14.04
* CentOS

Cookbooks
---------

The following Opscode cookbooks are dependencies:

* php

Attributes
==========

* `['xdebug']['cli_color']` = Enable cli colour output, defaults to `1`.
* `['xdebug']['scream']` = Enable removal for of `@` error suppression functionality, defaults to `0`.
* `['xdebug']['remote_enable']` = Defaults to `On`.
* `['xdebug']['remote_autostart']` = Defaults to `0`.
* `['xdebug']['remote_mode']` = Defaults to `req`.
* `['xdebug']['remote_connect_back']` = Defaults to `1`.
* `['xdebug']['idekey']` = Defaults to `macgdbp`.
* `['xdebug']['file_link_format']` = Defaults to `txmt://open?url=file://%f&line=%1`.
* `['xdebug']['profiler_enable_trigger']` = Defaults to `0`.
* `['xdebug']['profiler_enable']` = Defaults to `0`.
* `['xdebug']['profiler_output_dir']` = Defaults to `/tmp/cachegrind`.
