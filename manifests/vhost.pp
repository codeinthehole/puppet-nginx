define nginx::vhost($filename, $source) {
	include nginx

	file {$vhost_source:
		path => "/etc/nginx/sites-enabled/$filename",
		owner => "root",
		group => "root",
		mode => '0644',
		source => $vhost_source,
		ensure => present,
	}
}
