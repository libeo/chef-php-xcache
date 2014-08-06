Description
===========

Installs the php xcache module. Uses a mix of xcache default values and Debian's defaults.
Description of the configuration options is available on http://xcache.lighttpd.net/wiki/XcacheIni.

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

* `['xcache']['extension']` = 'xcache.so'
* `['xcache']['admin.auth']` = 'On'
* `['xcache']['admin.user']` = 'admin'
* `['xcache']['admin.pass']` = ''
* `['xcache']['test']` = 'Off'
* `['xcache']['cacher']` = 'On'
* `['xcache']['size']` = '16M'
* `['xcache']['count']` = 1
* `['xcache']['slots']` = '8K'
* `['xcache']['ttl']` = 0
* `['xcache']['gc_interval']` = 300
* `['xcache']['stat']` = 'On'
* `['xcache']['var_size']` = '0M'
* `['xcache']['var_count']` = 1
* `['xcache']['var_slots']` = '8K'
* `['xcache']['var_ttl']` = 0
* `['xcache']['var_maxttl']` = 0
* `['xcache']['var_gc_interval']` = 300
* `['xcache']['readonly_protection']` = 'Off'
* `['xcache']['mmap_path']` = '/dev/zero'
* `['xcache']['optimizer']` = 'Off'
* `['xcache']['coverager']` = 'Off'
* `['xcache']['shm_scheme']` = 'mmap'
