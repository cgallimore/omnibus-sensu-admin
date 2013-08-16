God.watch do |w|
  w.name = "sensu-admin"
  w.start = "/opt/sensu-admin/embedded/bin/rackup /opt/sensu-admin/config.ru"
  w.keepalive
end
