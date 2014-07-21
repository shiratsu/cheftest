#
# Cookbook Name:: create_user
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
group 'deploy' do
	group_name 'deploy'
	gid 999
	action :create
end

user 'deploy' do
	comment 'deploy user'
    group 'deploy'
    home '/home/deploy'
    shell '/bin/bash'
    supports :manage_home => true
    action :create
end
