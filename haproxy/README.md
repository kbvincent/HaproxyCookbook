haproxy Cookbook
================
Basic Haproxy Configuration using Chef.
Includes Unit Tests and Integration Testing

Tools
------------
Chef
Vagrant
Kitchen
ChefSpec
VirtualBox

Usage
-----
Integration Testing:

| OS           | Command                            |
|:-------------|:-----------------------------------|
| Centos 7.0   | `kitchen test haproxy-centos-70`   |
| Centos 6.6   | `kitchen test haproxy-centos-66`   |
| ubuntu-14.04 | `kitchen test haproxy-ubuntu-1404` |

Unit testing:
 `chef exec rspec`

License and Authors
-------------------
Kristopher Vincent - @kbvincent
