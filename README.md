[![Build Status - Master](https://travis-ci.com/juju4/ansible-vivisect.svg?branch=master)](https://travis-ci.com/juju4/ansible-vivisect)
[![Build Status - Devel](https://travis-ci.com/juju4/ansible-vivisect.svg?branch=devel)](https://travis-ci.com/juju4/ansible-vivisect/branches)
# Vivisect ansible role

Ansible role to setup Vivisect, static analysis / emulation / symbolik analysis framework.
https://github.com/vivisect/vivisect

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.2

### Operating systems

Ubuntu 14.04, 16.04 and Centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.vivisect
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.vivisect
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.vivisect/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

