# == Class: pump::install
#
# This class installs pump
#
class pump::install
(
    $ensure

) inherits pump::params
{
    package { $::pump::params::package_name:
        ensure => $ensure,
    }
}
