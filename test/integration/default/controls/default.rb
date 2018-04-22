# encoding: utf-8
# copyright: 2017, The Authors

title 'verifies that all packages are installed'

packages = yaml(content: inspec.profile.file('packages.yml')).params['packages']

control 'packages' do
  impact 1.0
  title 'All packages are installed correctly'
  packages.each do |package|
    describe package(package) do
      it { should be_installed }
    end
  end
end
