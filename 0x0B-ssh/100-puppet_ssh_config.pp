#!/usr/bin/env bash
# Using Puppet to make changes to the configuration file

file { '/etc/ssh/ssh_config':
 	 ensure  => present,

content =>"
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",

}
