#
# Cookbook:: webserver
# Recipe:: apache
#
# Copyright:: 2021, The Authors, All Rights Reserved.

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



