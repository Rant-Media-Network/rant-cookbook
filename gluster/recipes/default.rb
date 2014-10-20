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

bash "download glusterfs-common_3.2.5" do
    code "wget http://mirrors.kernel.org/ubuntu/pool/universe/g/glusterfs/glusterfs-common_3.2.5-1ubuntu1_amd64.deb"
  end

bash "install glusterfs-common_3.2.5" do
	code "dpkg -i glusterfs-common_3.2.5-1ubuntu1_amd64.deb"
end
bash "download glusterfs-client_3.2.5" do
    code "wget http://mirrors.kernel.org/ubuntu/pool/universe/g/glusterfs/glusterfs-client_3.2.5-1ubuntu1_amd64.deb"
  end

bash "install glusterfs-client_3.2.5" do
	code "dpkg -i glusterfs-client_3.2.5-1ubuntu1_amd64.deb"
end