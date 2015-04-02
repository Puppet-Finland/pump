#
# == Class: pump::params
#
# Defines some variables based on the operating system
#
class pump::params {

    case $::osfamily {
        'Debian': {
            $package_name = 'pump'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
