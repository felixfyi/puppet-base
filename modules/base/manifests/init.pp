# base class: installs all default debian packages
# felix.mueller created: 19.11.2012

class base {

  Package { ensure => 'installed' }

  $packages = [
      'htop',
      'iftop',
      'lsof',
      'lynx',
      'mc',
      'vim',
      'less',
      'iptraf',
      'iotop',
    ]

  package { $packages: }
}
