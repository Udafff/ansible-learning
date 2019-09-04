# P@ssw0rd001
lxc exec centos-01 -- adduser vagrant -c "Vagrant user" -m -p '$6$AzpvezuLJ6TGSNUL$BPhlJgN0O2Yo4GHYTa18/t7UnP/.C1.yvytLV6LJp0UVkfi5IczN7yFTZE9caYorQPmEx2/tU73YQ/q/Ncl9h0' -s /bin/bash
lxc exec centos-01 -- mkdir -m=700 /home/vagrant/.ssh
lxc exec centos-01 -- sh -c "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDh+nJc1QJTLtI8KWfiIy+1GBmClFj4wQK0GKtEw8ACqaOxLUjJYk3LVvgoYTtQhNMV3GN2Rh8Ql9dbHbOA8JNkjqM/DkxVLw/6gArhYC1Wa8b6lZ9plU4REMgHJkVf3ooxtjiPVd9GHRjy8YkRC2ICIh5mGwQvi1fSR/qA5Xd9nu8VWKUW88vLxg0stenUw5Y6N5d6kf03BD9L9g0VyjY0t6qCNaqv3h7Y/iZx2+s8QHTHOdqqnpmG2EBauAuJXBp1M6ooyccSzx4Lz6NCuqw/+BJLLXfHmPiUwNv5IVswgM6nMrhmSUMCVTNbCAjDawWCYJfMLWEWj4akowFV2355' >> /home/vagrant/.ssh/authorized_keys"
lxc exec centos-01 -- chmod 600 /home/vagrant/.ssh/authorized_keys
lxc exec centos-01 -- chown -R vagrant:vagrant /home/vagrant/.ssh
lxc exec centos-01 -- yum install openssh-server -y
lxc exec centos-01 -- systemctl start sshd
lxc exec centos-01 -- systemctl enable sshd
lxc exec centos-01 -- usermod -p '$6$AzpvezuLJ6TGSNUL$BPhlJgN0O2Yo4GHYTa18/t7UnP/.C1.yvytLV6LJp0UVkfi5IczN7yFTZE9caYorQPmEx2/tU73YQ/q/Ncl9h0' root
lxc exec centos-01 -- yum install less -y
lxc exec centos-01 -- yum install epel-release -y