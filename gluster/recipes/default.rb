#
# Cookbook Name:: gluster
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "libibverbs1" do
	action :install
end

bash "download fuse-utils" do
    code "wget http://launchpadlibrarian.net/134821398/fuse-utils_2.9.0-1ubuntu3_all.deb"
  end

bash "install fuse-utils" do
	code "dpkg -i fuse-utils_2.9.0-1ubuntu3_all.deb"
end
