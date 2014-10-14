#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#package "httpd" do
#	action :install
#end
package "php-apc" do
	action :install
end

template "/etc/apache2/apache2.conf" do
	source "apache2.conf.erb"
end

template "/etc/apache2/mods-available/mpm_prefork.conf.erb" do
	source "mpm_prefork.conf.erb"
end

execute "a2enmod-rewrite" do
	command "/usr/sbin/a2enmod rewrite"
action :nothing
only_if {node['platform_family'] == "ubuntu"}
creates "/etc/apache2/mods-enabled rewrite.load"
end

service "apache2" do
	action :restart
end
