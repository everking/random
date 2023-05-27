REM Use this to make the cluster accessible from LAN.
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=443 connectaddress=localhost connectport=443
