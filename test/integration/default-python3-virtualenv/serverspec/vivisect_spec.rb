require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end


describe command('/home/_test/env-python/bin/pip3 freeze') do
  its(:stdout) { should match /vivisect/ }
  its(:exit_status) { should eq 0 }
end

