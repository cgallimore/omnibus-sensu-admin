
name "activesupport"
version "3.2.12"

dependencies ["ruby", "rubygems"]

build do
  gem ["install",
       "#{name}",
       "-v #{version}",
       "--",
       "--ruby=#{install_dir}/embedded/bin",
       "-n #{install_dir}/embedded/bin"
      ].join(" ")
end
