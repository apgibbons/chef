#
# Cookbook Name:: nagios
# Recipe::hoststate
#

nodes = Array.new
nodes = search(:node, "name:[* TO *]")

t = Time.now
time = t.to_i

execute "process_file" do
    command "#{node['nagios']['state_dir']}/rw/process_file.sh"
    action :nothing
end

# TODO: process the template once and just prefix the timestamp into the file in the above execute

directory "#{node['nagios']['state_dir']}/rw" do
    owner "nagios"
    group "#{node['apache']['group']}"
    recursive true
    action :create
end

template "#{node['nagios']['state_dir']}/rw/process_file-diff" do
    source "process_file-diff.erb"
    owner "nagios"
    group "#{node['apache']['group']}"
    variables :nodes => nodes
    notifies :run, resources(:execute => "process_file")
end

template "#{node['nagios']['state_dir']}/rw/process_file" do
    source "process_file.erb"
    owner "nagios"
    group "#{node['apache']['group']}"
    variables :nodes => nodes, :time => time
end

template "#{node['nagios']['state_dir']}/rw/process_file.sh" do
    source "process_file.sh.erb"
    mode 0750
end


