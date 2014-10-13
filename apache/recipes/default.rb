#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
	action :install
end

template "/etc/apache2/apache2.conf" do
	source "apache2.conf.erb"
end

service "httpd" do
	action [:enable, :start]
end