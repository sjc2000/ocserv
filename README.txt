# ocserv-cn-no-route

## OpenConnect VPN Server

主页：[http://www.infradead.org/ocserv/](http://www.infradead.org/ocserv/)

下载：[http://www.infradead.org/ocserv/download.html](http://www.infradead.org/ocserv/download.html)

更新历史：[http://www.infradead.org/ocserv/changelog.html](http://www.infradead.org/ocserv/changelog.html)

源码：[https://gitlab.com/ocserv/ocserv.git](https://gitlab.com/ocserv/ocserv.git)

## OpenConnect VPN Client

主页：[http://www.infradead.org/openconnect/](http://www.infradead.org/openconnect/)

下载：[http://www.infradead.org/openconnect/download.html](http://www.infradead.org/openconnect/download.html)

更新历史：[http://www.infradead.org/openconnect/changelog.html](http://www.infradead.org/openconnect/changelog.html)

源码：[http://git.infradead.org/users/dwmw2/openconnect.git](http://git.infradead.org/users/dwmw2/openconnect.git)

## [Cisco AnyConnect VPN Client](https://cnlic.com/share/client.html)

## 注意事項

1、0.10.5 及之前版本ocserv需要修改src/vpn.h来支持超过96行(ocserv默认值)但不超过200行(Cisco AnyConnect最大值)的路由表:

```
#define MAX_CONFIG_ENTRIES 96
```

96改为200以上

0.10.6 及之后版本ocserv不需要修改，参考[https://gitlab.com/ocserv/ocserv/issues/17](https://gitlab.com/ocserv/ocserv/issues/17)

2、根据[Cisco官方文档](http://www.cisco.com/c/en/us/products/collateral/security/ios-sslvpn/prod_white_paper0900aecd80512071.html)，no-route和route不能同时使用。

```
You can specify either split-include or split-exclude, but you cannot specify both options.
```

## 喜讯

2015/12/08 Debian有官方ocserv源了：[https://tracker.debian.org/pkg/ocserv](https://tracker.debian.org/pkg/ocserv)

```
echo 'deb http://ftp.debian.org/debian/ unstable main contrib non-free' >> /etc/apt/sources.list
apt-get update
apt-get install ocserv
```
## 推广

[搬瓦工](https://bandwagonhost.com/aff.php?aff=1366)VPS推广链接

| 链接                                              | 套餐                   | 价格($年付)            | 配置                                           |
|---------------------------------------------------|------------------------|------------------------|------------------------------------------------|
| https://bandwagonhost.com/aff.php?aff=1366&pid=12 |10G VZ - PROMO|19.99|512M内存、500GB流量/月、10GB SSD硬盘|
| https://bandwagonhost.com/aff.php?aff=1366&pid=43 |10G KVM - PROMO|19.99|512M内存、500GB流量/月、10GB SSD硬盘|
| https://bandwagonhost.com/aff.php?aff=1366&pid=27 |SPECIAL 10G VZ PROMO V3 - PHOENIX AZ|11.99|512M内存、1000GB流量/月、10GB SSD硬盘|
| https://bandwagonhost.com/aff.php?aff=1366&pid=28 |SPECIAL 20G VZ PROMO V3 - PHOENIX AZ|18.99|1024M内存、2000GB流量/月、20GB SSD硬盘|
| https://bandwagonhost.com/aff.php?aff=1366&pid=34 |SPECIAL 10G VZ PROMO V3 - LOS ANGELES - CHINA DIRECT ROUTE|19.99|512M内存、1000GB流量/月、10GB SSD硬盘|
| https://bandwagonhost.com/aff.php?aff=1366&pid=53 |SPECIAL 10G KVM PROMO V3 - LOS ANGELES - CHINA DIRECT ROUTE|19.99|512M内存、1000GB流量/月、10GB SSD硬盘|
| https://bandwagonhost.com/aff.php?aff=1366&pid=36 |SPECIAL 10G VZ PROMO V3 - FREMONT CA|19.99|512M内存、1000GB流量/月、10GB SSD硬盘|

官网被DNS污染，请在hosts中添加以下两行

```
104.20.6.63	bandwagonhost.com
104.20.7.63	bandwagonhost.com
```

[VULTR](https://www.vultr.com/?ref=6923829)VPS推广链接

| 链接                                              | 价格($月付)            | 配置                                           |
|---------------------------------------------------|------------------------|------------------------------------------------|
| https://www.vultr.com/?ref=6923829 |2.50|1CPU、512MB内存、500GB流量/月、20GB SSD硬盘|
| https://www.vultr.com/?ref=6923829 |5.00|1CPU、1GB内存、1000GB流量/月、25GB SSD硬盘|
| https://www.vultr.com/?ref=6923829 |10.00|1CPU、2GB内存、2000GB流量/月、40GB SSD硬盘|
| https://www.vultr.com/?ref=6923829 |20.00|2CPU、4GB内存、3000GB流量/月、60GB SSD硬盘|
