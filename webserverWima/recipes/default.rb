#
# Cookbook Name:: webserverWima
# Recipe:: default
#
# Copyright 2021, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'httpd' do
	action :install
end

file '/var/www/html/' do
	content 'hello friends'
	action :create
end

service 'httpd' do
	action [:enable, :start]
end