[Unit]
Description=Lighthouse Beacon Node
After=network.target
Wants=network.target[Service]
  
[Service]
User=lighthousebeacon
Group=lighthousebeacon
Type=simple
Restart=always
RestartSec=5
ExecStart=/usr/local/bin/lighthouse beacon_node --datadir /var/lib/lighthouse/beacon-node --http --execution-endpoint http://localhost:8551 --execution-jwt /home/eth/mainnet/geth/jwtsecret --metrics --checkpoint-sync-url https://mainnet-checkpoint-sync.stakely.io

[Install]
WantedBy=default.target
