$scopevariable = "top scope"
node default {
}
node 'node1' {
#	class { 'webserver':
#		env1 => "PRODUCTION",	
#	}
	include roles::webserver
}

