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
                user => 'root',
                type => 'ssh-rsa',
                key => 'AAAB3NzaC1yc2EAAAADAQABAAABAQDjfO5Ecjc0aOHUyqQgJxdKGvJjMHdv3MvZjwH14OhoMhj7BnFMavymHsnKXVQoVzux9/N8KH0WmwtKDWM2N8KJ4bF/omilKyjlKdCEnyr0L9VbmnqJMZrIysQmYDjCicRtOlE9QUgc7sL0NYDZhXpGJGe2kzx3OkN873Vk9ZQeSSiKXJDztqANr7ESPRXhAxsZHzN86cHUmttV+5fWptvJLSYR2A/3a5t+SjAc5yVRxG4tXIUXM8OslA2pg4NnofIPZu7hAC6BAvf8We/OBd40IelB83arV/xurmkPVuZMtoEp8YW+9Jly4kLm0W2tQhQui1z+8o4XE6GUKHhVoml5',
        }
 }
