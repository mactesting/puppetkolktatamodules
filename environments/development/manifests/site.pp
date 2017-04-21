node default {
}
node 'node2' {
#	class { 'webserver':
#		env1 => "DEVELOPMENT",
#	}
	include roles::webserver
}
