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
