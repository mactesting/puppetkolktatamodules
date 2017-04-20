class logic {
	$newvar = $fqdn ? { 
		'puppet'=> 'puppetmaster',
		'node1'=>'client1',
		default => 'none',	
	}
	if $fqdn == 'puppet' {
       		file { "/root/${fqdn}":
			ensure => present,
			content => "I am created on host - ${newvar}",
		}
	}
	elsif $fqdn == 'node1' {
		file { "/root/${fqdn}":
			ensure => present,
			content => "I am created on host - ${newvar}",
		}
	}
	else {
		notify { 'n1':
			message => "None of hosts matched the condition",
		}
	}
}
