#
## Cookbook Name:: exabgp
## Recipe:: ppa
##
## Copyright 2015, Quadra rubra, UAB.
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, softw
## distributed under the License is distributed on an "AS IS" BASIS
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
## See the License for the specific language governing permissions
## limitations under the License.
##
#
#
apt_repository 'exabgp' do
  uri 'http://ppa.launchpad.net/sbadia/exabgp/ubuntu'
  distribution node['lsb']['codename']
  components ['main']
  keyserver 'keyserver.ubuntu.com'
  key '0DE88D2D'
end

execute 'apt_update' do
  command 'apt-get update'
  action :run
end

package 'exabgp' do
  action :upgrade
end

node.set['exabgp']['bin_path'] = '/usr/sbin/exabgp'

include_recipe 'exabgp::default'
