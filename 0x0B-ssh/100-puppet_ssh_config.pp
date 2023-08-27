#Puppet script to change ssh configuration
file_line { 'Turn off password authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?\s*PasswordAuthentication',
}

file_line { 'Declare identity change':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?\s*IdentityFile'
}

