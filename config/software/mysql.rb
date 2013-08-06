
name "mysql-connector"
description "Generic MySQL libraries"
version "5.2.5"

source :url => "http://cdn.mysql.com/Downloads/Connector-ODBC/5.2/mysql-connector-odbc-5.2.5-src.tar.gz"
       :md5 => " 909e0c3c9c341fe777d0a620c4084442"

relative_path "mysql-connector-#{version}"

env = {
  "LDFLAGS" => "-Wl,-rpath,#{install_dir}/embedded/lib -L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
}

build do
  command "./configure --prefix=#{install_dir}/embedded --disable-readline",
          :env => env
  command "make -j #{max_build_jobs}", :env => env
  command "make install"
end
