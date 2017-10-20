# Simulate AWS resources failure  

# Block all network traffic 

This removes all access to the host group which you run against, basically I used iptables block network in and out except for the public IP which I am connected.

Enable with: `block_all_network_traffic_enabled` = true

# Burn-CPU 

This tool runs CPU intensive processes, simulating a noisy neighbor or a faulty CPU. The instance will effectively have a much slower CPU.

Enable with: `burn_cpu_enabled` = true

# Burn-IO 

This tool runs disk intensive processes, simulating a noisy neighbor or a faulty disk. The instance will effectively have a much slower disk.

Enable with: `burn_cpu_enabled` = true 

# Fill Disk 

This tool writes a huge file to the root device, filling up the (typically relatively small) EC2 root disk.

Enable with: `fill_disk_enable` = true 

# Kill Processes 

This tool kills any java, python or node programs it finds every second, simulating a faulty application, corrupted installation or faulty instance. The instance is fine, but the java/python/node application running on it will fail.

Enable with: `kill_process_enabled` = true 

# Null-Route 

This tool null-routes the 10.0.0.0/8 (VPC CIDR/8) network, which is used by the EC2 internal network. All EC2 <-> EC2 network traffic will fail.

Enable with: `null_route_enable` = true 

# Fail DNS 

This tool uses iptables to block port 53 for TCP & UDP; those are the DNS traffic ports. This simulates a failure of your DNS servers.

Enable with: `fail_dns_enable` = true 

# Fail EC2 API 

This tool puts dummy host entries into /etc/hosts, so that all EC2 API communication will fail. This simulates a failure of the EC2 control plane. 

Enable with: `fail_ec2_api_enabled` = true

# Fail S3 API 

This tool puts dummy host entries into /etc/hosts, so that all S3 communication will fail. This simulates a failure of S3. 

Enable with: `fail_s3_enabled` = true 

# Fail DynamoDB API 

This tool puts dummy host entries into /etc/hosts, so that all DynamoDB communication will fail. This simulates a failure of DynamoDB. 

Enable with: `fail_dynamodb_enabled` = true 

# Network Corruption 

This tool uses the traffic shaping API to corupt a large fraction of network packets. This simulates degradation of the EC2 network.

Enable with: `network_corruption_enabled` = true 

# Network Latency 

This monkey uses the traffic shaping API to introduce latency (1 second +- 50%) to all network packets. This simulates degradation of the EC2 network.

Enable with: `network_latency_enabled` = true 

# Network Loss

This tool uses the traffic shaping API to drop a fraction of all network packets. This simulates degradation of the EC2 network.

Enable with: `network_loss_enabled` = true 
