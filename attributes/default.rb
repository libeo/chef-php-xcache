case node['platform']
when 'centos'
  default['php-xcache']['conf_dirs'] = ['/etc/php.d']
  default['php-xcache']['conf_file'] = 'xcache.ini'
  default['php-xcache']['package'] = 'php-xcache'
when 'debian'
  default['php-xcache']['conf_dirs'] = ['/etc/php5/conf.d']
  default['php-xcache']['conf_file'] = '20-xcache.ini'
  default['php-xcache']['package'] = 'php5-xcache'
when 'ubuntu'
  default['php-xcache']['package'] = 'php5-xcache'
  default['php-xcache']['conf_file'] = 'xcache.ini'
  if node['platform_version'] < '14.04'
    default['php-xcache']['conf_dirs'] = ['/etc/php5/conf.d']
  else
    default['php-xcache']['conf_dirs'] = ['/etc/php5/mods-available']
  end
end

default['php-xcache']['xcache']['extension']           = 'xcache.so'
default['php-xcache']['xcache']['admin.auth']          = 'On'
default['php-xcache']['xcache']['admin.user']          = 'admin'
default['php-xcache']['xcache']['admin.pass']          = ''
default['php-xcache']['xcache']['test']                = 'Off'
default['php-xcache']['xcache']['cacher']              = 'On'
default['php-xcache']['xcache']['size']                = '16M'
default['php-xcache']['xcache']['count']               = 1
default['php-xcache']['xcache']['slots']               = '8K'
default['php-xcache']['xcache']['ttl']                 = 0
default['php-xcache']['xcache']['gc_interval']         = 300
default['php-xcache']['xcache']['stat']                = 'On'
default['php-xcache']['xcache']['var_size']            = '0M'
default['php-xcache']['xcache']['var_count']           = 1
default['php-xcache']['xcache']['var_slots']           = '8K'
default['php-xcache']['xcache']['var_ttl']             = 0
default['php-xcache']['xcache']['var_maxttl']          = 0
default['php-xcache']['xcache']['var_gc_interval']     = 300
default['php-xcache']['xcache']['readonly_protection'] = 'Off'
default['php-xcache']['xcache']['mmap_path']           = '/dev/zero'
default['php-xcache']['xcache']['optimizer']           = 'Off'
default['php-xcache']['xcache']['coverager']           = 'Off'
default['php-xcache']['xcache']['shm_scheme']          = 'mmap'
