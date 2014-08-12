case node['platform']
when 'centos'
  xcache_conf_path = '/etc/php.d/xcache.ini'
  include_recipe 'yum-repoforge'
  package_name = 'php-xcache'
when 'debian'
  package_name = 'php5-xcache'
  xcache_conf_path = '/etc/php5/conf.d/20-xcache.ini'
when 'ubuntu'
  package_name = 'php5-xcache'
  if node['platform_version'] < '14.04'
    xcache_conf_path = '/etc/php5/conf.d/xcache.ini'
  else
    xcache_conf_path = '/etc/php5/mods-available/xcache.ini'
  end
end

package package_name do
  action :install
end

template xcache_conf_path do
  source 'xcache.ini.erb'
  mode '0644'
  variables(
    params: node['xcache']
  )
end
