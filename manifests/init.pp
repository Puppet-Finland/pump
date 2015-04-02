# == Class: pump
#
# This class sets up the pump DHCP client
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage pump using Puppet. Valid values 'yes' (default) and 
#   'no'.
# [*ensure*]
#   Status of pump. Valid values 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class pump
(
    $manage = 'yes',
    $ensure = 'present'

) inherits pump::params
{

if $manage == 'yes' {

    class { 'pump::install':
        ensure => $ensure,
    }
}
}
