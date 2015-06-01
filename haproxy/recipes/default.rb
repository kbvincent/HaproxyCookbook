#
# Cookbook Name:: haproxy
# Recipe:: default
#
# Copyright 2015, Brett Vincent
#

include_recipe "haproxy::install"
include_recipe "haproxy::configure"
include_recipe "haproxy::service"