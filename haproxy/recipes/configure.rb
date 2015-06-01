#
# Cookbook Name:: haproxy
# Recipe:: configure
#
# Copyright 2015, Brett Vincent
#

template "/etc/haproxy/haproxy.cfg" do
  source "haproxy.cfg.erb"
  owner node[:haproxy][:user]
  group node[:haproxy][:group]
  mode "0644"
  notifies :restart, "service[haproxy]"
end