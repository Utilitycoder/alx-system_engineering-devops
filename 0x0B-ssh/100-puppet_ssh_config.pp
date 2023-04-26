file { '/etc/ssh/ssh_config':
  ensure  => 'file',
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => "
    Host *
        PasswordAuthentication no
        IdentityFile ~/.ssh/school
        SendEnv LANG LC_*
        HashKnownHosts yes
        GSSAPIAuthentication yes
        GSSAPIDelegateCredentials no
  ",
}
