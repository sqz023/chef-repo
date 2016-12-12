#
# Cookbook Name:: first_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'Install pachage httpd' do
  package_name 'httpd'
end

user 'saqib' do
  home '/home/saqib'
end

hostname = node['hostname']
ipadd = node['ipaddress']

log 'Printing the hostname' do
  message "The hostname of this machine is #{hostname} #{ipadd}"
end


execute 'Making file and putting content in it' do
  command "echo hi > /tmp/foobar"
end

#my_name = node[:myname]
#my_age = node[:myage]
#package_name = node[:httpd][:package_name]

#my_name = node[:name]
#my_age = node[:age]
#my_env = node[:env]

#log 'Printing variables' do
#  message "Name is #{my_name} and age is #{my_age} and env is #{my_env}"
#end

environment = node.chef_environment

databag_item_details = data_bag_item("#{environment}", "itemname")
age = databag_item_details["age"]
mysql_pass = databag_item_details["mysql_password"]

log 'Printing age' do
  message "The age is #{age} and mysql password is #{mysql_pass}"
end
