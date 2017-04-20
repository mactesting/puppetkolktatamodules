#$environment = "QA"
class fact {
	$variable1 = ['/root/file1','/root/file2','/root/file3']
#	$environment = "development"
#	$environment = "testing"
	exec { 'e1':
		cwd => "/root",
		command => "/opt/puppetlabs/bin/facter > facterdata.txt",
	}
	$scopevariable = "class scope"
	file { '/root/scope.txt':
		ensure => present,
		content => "my scope is - ${scopevariable} \n",
	}
}
