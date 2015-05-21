#
# Cookbook Name:: exabgp
# Recipe:: pip
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

include_recipe 'python'
include_recipe 'runit'

python_pip 'exabgp' do
  action :install
end

include_recipe 'exabgp::default'

runit_service 'exabgp' do
  default_logger true
end
