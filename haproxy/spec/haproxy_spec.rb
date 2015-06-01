require_relative 'spec_helper'

describe 'haproxy' do
  let(:chef_run) { ChefSpec::SoloRunner.new().converge(described_recipe) }

  it 'installs haproxy' do
    expect(chef_run).to install_package('haproxy')
  end

  it 'configures /etc/haproxy/haproxy.cfg' do
      expect(chef_run).to create_template('/etc/haproxy/haproxy.cfg').with(
        user: 'root',
        group: 'root',
        mode: '0644'
      )
      configure_haproxy_command = chef_run.template('/etc/haproxy/haproxy.cfg')
      expect(configure_haproxy_command).to notify('service[haproxy]').to(:restart)
  end

  it 'starts haproxy service and ensures it runs at start up' do
      expect(chef_run).to enable_service('haproxy')
      expect(chef_run).to start_service('haproxy')
  end
end