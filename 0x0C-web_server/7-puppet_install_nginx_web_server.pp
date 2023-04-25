# Define the Nginx class
class nginx {

  # Install Nginx package
  package { 'nginx':
    ensure => 'installed',
  }

  # Configure Nginx
  file { '/etc/nginx/sites-available/default':
    content => "
server {
  listen 80;
  server_name localhost;

  location / {
    # Return 'Hello World!' when requesting Nginx root
    return 200 'Hello World!';
  }

  location /redirect_me {
    # Perform 301 redirect for '/redirect_me'
    return 301 /;
  }
}
",
    notify => Service['nginx'],
  }

  # Enable Nginx service
  service { 'nginx':
    ensure => 'running',
    enable => true,
  }

}

# Call the Nginx class
include nginx
