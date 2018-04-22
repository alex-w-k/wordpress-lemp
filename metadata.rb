name 'wordpress-lemp'
maintainer 'Alex Koch'
maintainer_email 'alex549us3@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures wordpress on the LEMP stack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

issues_url 'https://github.com/alex-w-k/wordpress-lemp/issues'
source_url 'https://github.com/alex-w-k/wordpress-lemp'

%w[ubuntu].each do |os|
  supports os
end
