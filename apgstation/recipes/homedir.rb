#
# Cookbook Name:: apgstation
# Recipe:: homedir
#

%w{ .profile .bash_profile .bashrc .inputrc }.each do |file|
    cookbook_file "/Users/agibbons/#{file}" do
      source "homedir/#{file}"
      owner "agibbons"
      group "staff"
      mode "0600"
    end
end

%w{ bin dev Dropbox .ssh .chef }.each do |dir|
    next if platform?("ubuntu") && dir?("Dropbox")
    directory "/Users/agibbons/#{dir}" do
        mode "0700"
        owner "agibbons"
        group "staff"
        action :create
        recursive true
    end
end