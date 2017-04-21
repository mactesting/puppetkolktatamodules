class sub::outer ($var = "from outer parenthesis"){
	$varouter = "I in class sub::outer"
	file { '/root/outer':
		ensure => present,
		content => "${varouter} & ${var}",
	}
}
