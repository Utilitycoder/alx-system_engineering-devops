# Define a file resource for the OpenSSH client configuration
file { '/etc/ssh/ssh_config':
  
  # Ensure that the file exists and is a regular file
  ensure  => 'file',
  
  # Set the owner of the file to root
  owner   => 'root',
  
  # Set the group of the file to root
  group   => 'root',
  
  # Set the file permissions to 0644 (-rw-r--r--)
  mode    => '0644',
  
  # Set the contents of the file to the following configuration options
  content => "
    Host *
        PasswordAuthentication no           # Disable password authentication
        IdentityFile ~/.ssh/school          # Specify the location of the identity file
        SendEnv LANG LC_*                   # Send environment variables
        HashKnownHosts yes                  # Enable hashing of known hosts
        GSSAPIAuthentication yes            # Enable GSSAPI authentication
        GSSAPIDelegateCredentials no        # Do not delegate credentials
  ",
}
