## SERIAL PORT w/ FAN
Disable SysRQ

`echo 0 > /proc/sys/kernel/sysrq`
## INTERNET SHARING
`sudo /sbin/route add default gw 192.168.7.1`

Set DNS to IP resolver
`vim /etc/resolv.conf`
```
domain localdomain
search localdomain
nameserver 8.8.8.8
nameserver 8.8.4.4
```
On the Windows OS open WiFi adapter properties and enable share internet to BB AI adapter.
BB AI adapter properties should be set to auto IP resolution.
