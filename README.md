# Simulate AWS resources failure  

# Block all network traffic 

This removes all access to the host group which you run against, basically I used iptables block network in and out except for the public IP which I am connected.

Enable with: `block_all_network_traffic_enabled` = true

# Burn-CPU 

This tool runs CPU intensive processes, simulating a noisy neighbor or a faulty CPU. The instance will effectively have a much slower CPU.

Enable with: `burn_cpu_enabled` = true

 
