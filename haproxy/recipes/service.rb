#
# Cookbook Name:: haproxy
# Recipe:: service
#
# Copyright 2015, Brett Vincent
#

service 'haproxy' do
  supports :reload => true, :restart => true, :status => true
  action [ :enable, :start ]
end