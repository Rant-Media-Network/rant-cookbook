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

template "/etc/php5/mods-available/apc.ini" do
	source "apc.ini.erb"
end

link "/etc/php5/apache2/conf.d/apc.ini" do
to "/etc/php5/mods-available/apc.ini"
end

#template "/etc/apache2/apache2.conf" do
	#source "apache2.conf.erb"
#end

template "/etc/apache2/mods-available/mpm_prefork.conf" do
	source "mpm_prefork.conf.erb"
end

def rewrite_enable?
	 ::File.exist?("etc/apache2/mods-enabled/rewrite.load")
end

if !rewrite_enable? then
  bash "enable rewrite" do
    code "a2enmod rewrite"
  end
end

service "apache2" do
	action :restart
end
