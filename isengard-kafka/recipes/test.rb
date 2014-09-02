# get by opsworks layers (http://docs.aws.amazon.com/opsworks/latest/userguide/attributes-json-opsworks-layers.html)
Chef::Log.info("Running Test Recipe")
zk_hosts = Array.new
node[:opsworks][:layers]['zookeeper'][:instances].each do |k,v|
# TODO: filter out :status != 'online'
Chef::Log.debug(v[:private_ip])
Chef::Log.info(v[:private_ip])
zk_hosts << v
end
