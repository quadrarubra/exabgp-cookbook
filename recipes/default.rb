#
# Cookbook Name:: exabgp
# Recipe:: default
#
# Copyright 2012, DNSimple, Inc.
# Copyright 2015, Quadra rubra, UAB.
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

directory "/etc/exabgp" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

service 'exabgp' do
    action [ :enable, :start ]
end

template '/etc/exabgp/route_0_watchdog.sh' do
  source 'route_0_watchdog.sh.erb'
  mode '755'
  notifies :restart, 'service[exabgp]'
end

template 'exabgp: config' do
  path '/etc/exabgp/exabgp.conf'
  source 'exabgp.conf.erb'
  variables(router_id: node.ipaddress,
            hold_time: node['exabgp']['hold_time'],
            neighbor_ipv4: node['exabgp']['ipv4']['neighbor'],
            local_address_ipv4: node.ipaddress,
            route_ipv4: node['exabgp']['ipv4']['anycast'],
            prefix_ipv4: node['exabgp']['ipv4']['prefix'],
            enable_ipv4_static_route: node['exabgp']['ipv4']['enable_static_route'],

            neighbor_ipv6: node['exabgp']['ipv6']['neighbor'],
            local_address_ipv6: node['ipv6address'],
            route_ipv6: node['exabgp']['ipv6']['anycast'],
            prefix_ipv6: node['exabgp']['ipv6']['prefix'],
            local_as: node['exabgp']['local_as'],
            peer_as: node['exabgp']['peer_as'],
            community: node['exabgp']['community'].join(' '))
  mode '644'
  notifies :restart, 'service[exabgp]'
end
