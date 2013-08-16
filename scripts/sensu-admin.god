God.watch do |w|
  w.name = "sensu-admin"
  w.start = "rackup ../config.ru -D"
  w.keepalive
end
