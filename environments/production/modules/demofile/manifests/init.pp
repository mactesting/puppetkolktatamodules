class demofile {
	file { '/root/demofile.txt':
		ensure => present,
		content => '${osfamily} & ${ipaddress}',
	}

} 
