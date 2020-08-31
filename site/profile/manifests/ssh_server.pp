class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJ18Omh6S7QdGzBlBjM097rSEhd47Xp/aWfZUUTYFa83I4P478KdEVVdU87o81I2tUlkffOmJhgk8+HUedqmSn+kNnQUh6fYY+Ya8iUPKqw2X8DMS9QzB2G1ei0/Mpo0eyH6f/tNcor1n8YX+nqydXpvIXNgjmoku1k0vY48s7DR5rAUt3JmaDHBMAVBzKNrEy2rWmPsy37rAyHqp3jEbrjugxTgXgQvZnoIcGaIyl29f8Rtg6EKJzNi4UqLJjlhqTdKEp1q4JMEnMQffwkrFaPcmYhl/WqtN7d3psIl/JDBfUS6FQe6wC7+HfC/J6suiXG5PE4qd28bRITC8BNQzP',
  }  
}



