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

name "rubygems"
version "1.8.25"

dependency "ruby"

source :url => "http://production.cf.rubygems.org/rubygems/rubygems-#{version}.tgz",
       :md5 => "1376a258d43c53750a8df30e67853e10"

relative_path "rubygems-#{version}"

build do
  ruby "setup.rb"
end
