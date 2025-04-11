1. What This Script Does:
Flushing DNS:
Clears outdated records to ensure your DNS queries use the most current entries.

Releasing/Renewing IP Configuration:
Resets your network settings for a fresh lease.

2. TCP Adjustments:

Auto-Tuning: Ensures your TCP window is set to a level that balances throughput and latency.

Chimney Offload: Disabling this helps prevent certain offloading issues that might cause jitter.

Receive-Side Scaling (RSS): Enabled in some cases to improve performance on multi-core systems.

3. MTU Setting:
Manually sets the MTU for the network adapter to 1400. This value might be tweaked if you’re still having issues (you can experiment between 1400 to 1472). Adjust the network interface name if yours differs from "Wi-Fi".

*Notes:
Admin Rights:
The script must be run as Administrator for the changes to take effect.

