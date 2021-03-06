name             'test-helper'
maintainer       'Kristopher Vincent'
maintainer_email 'kristopher.brett.vincent@outlook.com'
license          'Apache 2.0'
description      'Dumps chef node data to json file'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

recipe 'default', 'Dumps chef node data to json file'

%w{ ubuntu debian centos }.each do |os|
  supports os
end
