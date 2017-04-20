class demofile {
	$fqdn = "Host"
	file { '/root/demofile.txt':
		ensure => present,
#		content => "${osfamily} & ${ipaddress}\n",
		content => template('demofile/test1.erb'),		
	}

} 
