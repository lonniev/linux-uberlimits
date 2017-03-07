#
# Cookbook Name:: linux-uberlimits
# Recipe:: default
#
# "Creative Commons BY 2017", Predictable Response Consulting
#
# See https://en.wikipedia.org/wiki/CC_BY
#

# ramp up the pam_limits for the benefit of WAS
include_recipe 'limits'

# See https://bugs.launchpad.net/ubuntu/+source/sudo/+bug/1268373
template "/etc/pam.d/common-session" do

  source "common-session.erb"

  owner "root"
  group "root"
  mode "0644"

  variables :rule_content => "session required  pam_limits.so"

end

# use a restart tactic like vagrant :reload provisioner, chef reboot, or ohai restart
# to load these modifications
