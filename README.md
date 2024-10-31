# Hometask #4 (12/10)

## ubuntu@ip-172-31-19-15:~$ sudo -i
## root@ip-172-31-19-15:~# cat /etc/passwd | grep 'adminuser\|poweruser'
    adminuser:x:1001:1001::/home/adminuser:/bin/bash
    poweruser::1002:1002::/home/poweruser:/bin/bash

## root@ip-172-31-19-15:~# su - adminuser
    To run a command as administrator (user "root"), use "sudo <command>".
    See "man sudo_root" for details.
# adminuser@ip-172-31-19-15:~$ sudo ls /root
    [sudo] password for adminuser:
    snap

## adminuser@ip-172-31-19-15:~$ su - poweruser
# poweruser@ip-172-31-19-15:~$ sudo /sbin/iptables --version
    iptables v1.8.7 (nf_tables)
# poweruser@ip-172-31-19-15:~$ ls -l /home/adminuser
    total 0

## poweruser@ip-172-31-19-15:~$