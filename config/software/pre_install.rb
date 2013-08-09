name "pre_install"
#version "1.4.5"

#dependencies ["ruby", "rubygems"]
gems = {"bcrypt-ruby" => "3.1.1", "eventmachine" => "1.0.3", "faye-websocket" => "0.4.7", "http_parser.rb" => "0.5.3", "json" => "1.8.0", "kgio" => "2.8.0", "rack" => "1.4.5", "raindrops" => "0.11.0", "rake" => "0.9.2.2", "sqlite3" => "1.3.7", "therubyracer" => "0.11.4", "thin" => "1.5.1", "unicorn" => "4.6.3"}

build do
  gems.each do |name, version|
    gem ["install",
         "#{name}",
         "-v #{version}",
         "-n #{install_dir}/embedded/bin",
         "--",
         "--ruby=#{install_dir}/embedded/bin",
         "--with-opt-dir=#{install_dir}/embedded"
        ].join(" ")
  end
end
