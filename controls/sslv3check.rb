# encoding: utf-8
# copyright: 2018, The Authors

title 'Legacy SSL Settings Checks'

control 'SSL-1.0.1' do
  impact 1.0
  title 'Verify if SSL V2 Server is disabled'
  desc 'Verify if legacy SSL Settings is disabled'
  describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server') do
    its('Enabled') { should eq 0 }
  end
end

control 'SSL-1.0.2' do
  impact 1.0
  title 'Verify if SSL V2 Client is disabled'
  desc 'Verify if legacy SSL Settings is disabled'
  describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client') do
    its('DisabledByDefault') { should eq 1 }
  end
end

control 'SSL-1.0.3' do
  impact 1.0
  title 'Verify if SSL V3 Server is disabled'
  desc 'Verify if legacy SSL Settings is disabled'
  describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server') do
    its('Enabled') { should eq 0 }
  end
end

control 'SSL-1.0.4' do
  impact 1.0
  title 'Verify if SSL V3 Client is disabled'
  desc 'Verify if legacy SSL Settings is disabled'
  describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client') do
    its('DisabledByDefault') { should eq 1 }
  end
end