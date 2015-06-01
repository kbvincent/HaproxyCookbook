require_relative 'spec_helper'

describe package('haproxy') do
  it { should be_installed }
end

describe file('/etc/haproxy/haproxy.cfg') do
context 'dependencies recipe. It' do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by "#{$node['haproxy']['user']}" }
  it { should be_grouped_into "#{$node['haproxy']['group']}" }
  it { should contain "listen www 0.0.0.0:#{$node['haproxy']['incoming_port']}" }
  it { should contain "balance #{$node['haproxy']['balance_method']}" }
  it { should contain "server www1 10.0.0.1:#{$node['haproxy']['outbound_port']} check" }
  end
end

describe service('haproxy') do
  it { should be_enabled }
  it { should be_running }
end