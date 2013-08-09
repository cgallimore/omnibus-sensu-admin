#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "nokogiri"
version "1.6.0"

dependencies ["ruby", "rubygems", "libxml2", "libxslt", "libiconv"]

# This is needed until omnibus-ruby is fixed
    WHITELIST_LIBS = [
                      /ld-linux/,
                      /libc\.so/,
                      /libcrypt\.so/,
                      /libdl/,
                      /libfreebl\d\.so/,
                      /libgcc_s\.so/,
                      /libm\.so/,
                      /libnsl\.so/,
                      /libpthread/,
                      /libresolv\.so/,
                      /librt\.so/,
                      /libstdc\+\+\.so/,
                      /libutil\.so/,
                      /linux-vdso.+/,
                      /linux-gate\.so/,
                      /libz\.so\.\d/
                     ]
    ARCH_WHITELIST_LIBS = [
                           /libc\.so/,
                           /libcrypt\.so/,
                           /libdb-5\.3\.so/,
                           /libdl\.so/,
                           /libffi\.so/,
                           /libgdbm\.so/,
                           /libm\.so/,
                           /libpthread\.so/,
                           /librt\.so/,
                           /libutil\.so/,
                           /libz\.so\.\d/
                          ]

    AIX_WHITELIST_LIBS = [
      /libpthread\.a/,
      /libpthreads\.a/,
      /libdl.a/,
      /librtl\.a/,
      /libc\.a/,
      /libcrypt\.a/,
      /unix$/,
    ]

    SOLARIS_WHITELIST_LIBS = [
                              /libaio\.so/,
                              /libavl\.so/,
                              /libcrypt_[di]\.so/,
                              /libcrypto.so/,
                              /libcurses\.so/,
                              /libdoor\.so/,
                              /libgen\.so/,
                              /libmd5\.so/,
                              /libmd\.so/,
                              /libmp\.so/,
                              /libscf\.so/,
                              /libsec\.so/,
                              /libsocket\.so/,
                              /libssl.so/,
                              /libthread.so/,
                              /libuutil\.so/,
                              /libz.so/,
                              # solaris 11 libraries:
                              /libc\.so\.1/,
                              /libm\.so\.2/,
                              /libdl\.so\.1/,
                              /libnsl\.so\.1/,
                              /libpthread\.so\.1/,
                              /librt\.so\.1/,
                              /libcrypt\.so\.1/,
                              /libgdbm\.so\.3/,
                              # solaris 9 libraries:
                              /libm\.so\.1/,
                              /libc_psr\.so\.1/,
                              /s9_preload\.so\.1/
                             ]

    SMARTOS_WHITELIST_LIBS = [
                              /libm.so/,
                              /libpthread.so/,
                              /librt.so/,
                              /libsocket.so/,
                              /libdl.so/,
                              /libnsl.so/,
                              /libgen.so/,
                              /libmp.so/,
                              /libmd.so/,
                              /libc.so/,
                              /libgcc_s.so/,
                              /libstdc\+\+\.so/,
                              /libcrypt.so/
                             ]

    MAC_WHITELIST_LIBS = [
                          /libobjc\.A\.dylib/,
                          /libSystem\.B\.dylib/,
                          /CoreFoundation/,
                          /Tcl$/,
                          /Cocoa$/,
                          /Carbon$/,
                          /IOKit$/,
                          /Tk$/,
                          /libutil\.dylib/,
                          /libffi\.dylib/,
                          /libncurses\.5\.4\.dylib/,
                          /libiconv/,
                          /libstdc\+\+\.6\.dylib/,
                          /libz.1.dylib/
                         ]

    FREEBSD_WHITELIST_LIBS = [
                               /libc\.so/,
                               /libcrypt\.so/,
                               /libm\.so/,
                               /librt\.so/,
                               /libthr\.so/,
                               /libutil\.so/,
                               /libz.so\.\d/
                              ]

build do
  gem ["install",
       "nokogiri",
       "-v #{version}",
       "--",
       "--ruby=#{install_dir}/embedded/bin",
       "--with-zlib-lib=#{install_dir}/embedded/lib",
       "--with-zlib-include=#{install_dir}/embedded/include",
       "--with-xml2-lib=#{install_dir}/embedded/lib",
       "--with-xml2-include=#{install_dir}/embedded/include/libxml2",
       "--with-xslt-lib=#{install_dir}/embedded/lib",
       "--with-xslt-include=#{install_dir}/embedded/include/libxslt",
       "--with-iconv-include=#{install_dir}/embedded/include",
       "--with-iconv-lib=#{install_dir}/embedded/lib"
      ].join(" ")
end
