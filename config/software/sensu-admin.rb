name "sensu-admin"
version "v0.0.6"

dependency "ruby"
dependency "bundler"
dependencies [ "activesupport", "actionpack", "sqlite3" ]

source git: "http://github.com/cgallimore/sensu-admin"

relative_path "sensu-admin"

build do
#  bundle "install --path=#{install_dir}/embedded/service/gem --without mysql"
  command "rake gem"
  gem [ "install sensu-admin-#{version}.gem",
        "--bindir #{install_dir}/bin",
        "--no-rdoc --no-ri",
        "--trace" ].join(" ")
end
