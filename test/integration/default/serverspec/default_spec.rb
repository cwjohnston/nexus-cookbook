require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'Nexus OSS' do

  describe service('nexus') do
    it { should be_running }
  end

  describe port(8081) do
    it { should be_listening }
  end

end
