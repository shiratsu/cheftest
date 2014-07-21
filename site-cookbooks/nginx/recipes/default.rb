#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# nginxをインストールしてある状態にする
package "nginx" do
  action :install
end
 
# nginxを起動して、OS起動時のサービスを有効化にしてある状態にする
service "nginx" do
  action [ :enable, :start ]
end
