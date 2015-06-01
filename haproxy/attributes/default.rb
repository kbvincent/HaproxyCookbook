#
# Cookbook Name:: haproxy
# Attributes File
# Copyright 2015, Brett Vincent
#

default['haproxy']['user'] = "root"
default['haproxy']['group'] = "root"
default['haproxy']['incoming_port'] = "443"
default['haproxy']['outbound_port'] = "80"
default['haproxy']['balance_method'] = "roundrobin"