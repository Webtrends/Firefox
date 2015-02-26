require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'firefox::default' do
  describe command('firefox -v') do
    its(:stdout) { should match(/Mozilla Firefox 28\.0/) }
    its(:exit_status) { should eq 0 }
  end
end
