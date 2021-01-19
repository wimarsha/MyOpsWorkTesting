#
# Cookbook Name:: webserverWima
# Recipe:: default
#
# Copyright 2021, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'apache2' do
	action :install
end

file '/var/www/html/index.html' do
	content 'hello friends'
	action :create
end

service 'apache2' do
	action [:enable, :start]
end
