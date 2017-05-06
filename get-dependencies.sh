#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/juju4.redhat-epel ] && git clone https://github.com/juju4/ansible-redhat-epel $rolesdir/juju4.redhat-epel
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.vivisect ] && ln -s ansible-vivisect $rolesdir/juju4.vivisect
[ ! -e $rolesdir/juju4.vivisect ] && cp -R $rolesdir/ansible-vivisect $rolesdir/juju4.vivisect

## don't stop build on this script return code
true

