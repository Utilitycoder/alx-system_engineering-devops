file { '/home/user/.ssh/config':
  ensure => 'file',
  owner  => 'user',
  group  => 'user',
  mode   => '0600',
  content => "
    Host 54.160.86.54
      IdentityFile ~/.ssh/school
      PreferredAuthentications publickey
      PasswordAuthentication no
  ",
}
