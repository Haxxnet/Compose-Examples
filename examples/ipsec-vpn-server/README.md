# References 

- https://github.com/hwdsl2/docker-ipsec-vpn-server
- https://blog.lrvt.de/dockerized-ikev2-vpn/

# Notes

> IKEv2 mode has improvements over IPsec/L2TP and IPsec/XAuth ("Cisco IPsec"), and does not require an IPsec PSK, username or password.

--> Therefore, IKEv2 only was chosen as preset via the environment variables of the provided docker-compose.yml.

````
# copy IKEv2 VPN profile from docker container onto host
docker cp ipsec-vpn-server:/etc/ipsec.d/vpnclient.p12 ./

# inspect randomly created certificate password
docker logs ipsec-vpn-server

# elevated powershell; import the VPN profile into Windows using the password from docker logs above
# if you have not chosen to use a randomly created password (env var VPN_PROTECT_CONFIG=yes), then use a blank entry and just hit enter
certutil.exe -f -importpfx .\vpnclient.p12 NoExport

# elevated powershell; set additional reg key to harden IKEv2 key exchange
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\RasMan\Parameters /v NegotiateDH2048_AES256 /t REG_DWORD /d 0x1 /f

# lowpriv powershell; add the IKEv2 VPN connection
powershell -command "Add-VpnConnection -ServerAddress 'vpn.example.com' -Name 'IKEVPN' -TunnelType IKEv2 -AuthenticationMethod MachineCertificate -EncryptionLevel Required -PassThru"

powershell -command "Set-VpnConnectionIPsecConfiguration -ConnectionName 'IKEVPN' -AuthenticationTransformConstants GCMAES128 -CipherTransformConstants GCMAES128 -EncryptionMethod AES256 -IntegrityCheckMethod SHA256 -PfsGroup None -DHGroup Group14 -PassThru -Force"

# force Windows to use the IKE VPN DNS servers by adjusting the metric level
# see https://superuser.com/a/966833
netsh int ip set interface interface="IKEVPN" metric=1
````
