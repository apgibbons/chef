maintainer        "Andrew Gibbons"
maintainer_email  "agibbons@gmail.com"
license           "Apache 2.0"
description       "Installs and configures nagios extras"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.1"
name              "nagios-extras"

recipe "nagios::hoststate", "Updates notifications based on host environment"

depends nagios
