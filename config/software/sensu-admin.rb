name "sensu-admin"
version "master"

dependency "ruby"
dependency "bundler"
dependency "nokogiri"
dependency "sqlite3-libs"
dependency "pre_install"

source git: "http://github.com/sensu/sensu-admin"

relative_path "sensu-admin"

build do
  command "cp -R #{source_dir}/sensu-admin/* #{install_dir}"
end
