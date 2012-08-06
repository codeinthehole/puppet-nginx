==============================
Nginx configuration for puppet
==============================

This simple module installs nginx and provides a defined type for installing
virtualhost files.  It is very basic - there are problably better nginx modules
for you if your requirements are more than putting a virtualhost file in place.

Install
-------

Install into your puppet modules path using::

    git clone git://github.com/codeinthehole/puppet-nginx.git nginx

then add::

    include nginx

to the appropriate node manifest file.  You can put virtualhost files in place
using the syntax::

    nginx::vhost { "vagrant.nginx.file":
        filename => "vagrant.conf",
        source => "/vagrant/www/deploy/nginx/vagrant.conf"
    }