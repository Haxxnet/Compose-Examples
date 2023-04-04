# References 

- https://github.com/hwdsl2/docker-ipsec-vpn-server

# Notes

````
# copy IKEv2 VPN profile from docker container onto host
docker cp ipsec-vpn-server:/etc/ipsec.d/vpnclient.p12 ./

# elevated powershell; import the VPN profile into Windows
certutil.exe -f -importpfx .\vpnclient.p12 NoExport

# manually add the new IKEv2 VPN connection
powershell -command "Add-VpnConnection -ServerAddress 'vpn.example.com' -Name 'IKEVPN' -TunnelType IKEv2 -AuthenticationMethod MachineCertificate -EncryptionLevel Required -PassThru"

powershell -command "Set-VpnConnectionIPsecConfiguration -ConnectionName 'IKEVPN' -AuthenticationTransformConstants GCMAES128 -CipherTransformConstants GCMAES128 -EncryptionMethod AES256 -IntegrityCheckMethod SHA256 -PfsGroup None -DHGroup Group14 -PassThru -Force"

# set additional reg key to harden IKEv2 key exchange
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\RasMan\Parameters /v NegotiateDH2048_AES256 /t REG_DWORD /d 0x1 /f
````
