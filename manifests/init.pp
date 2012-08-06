class nginx::install {
	package { "nginx":
		ensure => present
	}
}

class nginx::service {
	service { "nginx":
		ensure => running,
		enable => true,
		hasstatus => true,
		hasrestart => true,
		require => Class["nginx::install"],
	}
}

class nginx {
	include nginx::install, nginx::service
}