#
# Cookbook Name:: services
# Resource:: port_watcher
#
# Copyright 2012, Tacit Knowledge, Inc.
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

actions :wait
default_action :nothing

attribute :port, :kind_of => String, :name_attribute => true
attribute :protocol, :kind_of => String, :default => "tcp"
attribute :status_command, :kind_of => String, :default => nil, :required => true
#timeout is in seconds
attribute :timeout, :kind_of => Integer, :default => nil
