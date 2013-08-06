name "sensu-admin"
version "master"

dependency "ruby"
dependency "bundler"
dependencies [ "nokogiri","activesupport", "actionpack", "sqlite3" ]

source git: "http://github.com/cgallimore/sensu-admin"

relative_path "sensu-admin"

build do
  command "rake gem"
  gem [ "install #{source_dir}/#{name}/pkg/sensu-admin-0.0.6.gem",
        "--bindir #{install_dir}/bin",
        "--no-rdoc --no-ri",
      ].join(" ")
end
