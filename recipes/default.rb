case node['platform']
when 'centos'
  include_recipe 'yum-repoforge'
end

package node['php-xcache']['package'] do
  action :install
end

node['php-xcache']['conf_dirs'].each do |conf_dir|
  template "#{conf_dir}/#{node['php-xcache']['conf_file']}" do
    source 'xcache.ini.erb'
    owner 'root'
    group 'root'
    mode 0644
    variables(
      params: node['php-xcache']['xcache']
    )
  end
end
