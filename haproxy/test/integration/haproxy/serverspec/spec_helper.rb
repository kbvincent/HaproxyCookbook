require 'serverspec'
require 'pathname'
require 'json'

set :backend, :exec
set :path, '/bin:/usr/local/bin:$PATH'
$node = ::JSON.parse(File.read('/tmp/serverspec/node.json'))