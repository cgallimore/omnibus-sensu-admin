
name "sensu-admin"
maintainer "Sonian Inc"
homepage "http://www.sonian.com"

replaces        "sensu-admin"
install_path    "/opt/sensu-admin"
build_version   "0.0.6"
build_iteration 1

# creates required build directories
dependency "preparation"

# sensu-admin dependencies/components
dependency "sensu-admin"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
