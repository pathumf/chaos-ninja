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
 
