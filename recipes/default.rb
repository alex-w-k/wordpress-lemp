#
# Cookbook:: wordpress-lemp
# Recipe:: default
#

apt_update

%w[nginx php-fpm php-mysql mysql-server].each do |package|
  package(package) do
    action :install
  end
end
