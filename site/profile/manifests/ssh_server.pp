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
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCsGsAdjF+f+mPdMrcgfzVy9N0ExPP2M0d4VN4Gk5mgqk3UaRpxE0o7xL2Ct1fNE/QLab9ewpjcpZxf/eNT0v6I2Cu2DJR7ZIrsAAtCRPrkbQMl1HGpp3xxekGHT3Wh/IUNg5iuemxC2xDl5FTSmrEEe7GYP4GdMJC/P9LQg6AwHqn2FME3ce+o2WusqvwoG9UCFV34nw0vc6jvcJ9u475ExZtY04z5GazcCFVlQVCZ+43ViGkkhndRHrMVBLYXLUeRCfQm3P8e9k+ePdQqNxh7wvVAu3eAf86SM812DBmypnuThNwFm692sVhMFXGBpKrFw4q58wEATkBMI6n8nIdV',
        }  
}
