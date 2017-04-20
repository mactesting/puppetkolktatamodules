$scopevariable = "top scope"
node default {
	$scopevariable = "node scope"
	include demofile
#	include fact
#	class test {
#	file { '/root/scope.txt':
#		ensure => present,
#		content => "Scope is - ${scopevariable} \n",
#		}
#	include fact
#	include logic
#	}
	include webserver
}
