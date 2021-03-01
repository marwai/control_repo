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
            key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJjVRYuF7wzjEAwnZtg+xshfXX5YHrInsz7n3/KgNthStu/Y3J2qPQkBP25E9aBL4aykeLDO+4/fO+rVtG9intfWhktd6L+nQilCZtHrDDj009neTsGgrR3Ye1v96eSbhRlrMTg4oaiedGEOm+G1vCRJrmwawFrvZVGqy5qVVDsn9baF1KcZ8uVrjxsTqdhFm1KqqXNf8IIPuQP74PjJC7Ea8PwSDqZjZKRj0UHSXCpIokfoSOK8Kn2/Z0+oHp/1SvpuQfT8JoPa9leMZVvNLPYg/qoZJ/ISOoJclsLEYtcb8NcF9w7Z2AtaQFcjDZiu1S72/qf1wKxlEasIsstrjX root@master.puppet.vm',
    }
}
