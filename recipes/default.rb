include_recipe 'php'

xcache_conf_path = "#{node['php']['ext_conf_dir']}/20-xcache.ini"
case node['platform']
when 'centos'
  include_recipe 'yum-repoforge'
  package_name = 'php-xcache'
when 'debian'
  package_name = 'php5-xcache'
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
