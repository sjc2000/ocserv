# cat mydns
wget -O /dev/nul "https://api.dynu.com/nic/update?hostname=any.DOMAIN.com&username=USERNAME@gmail.com&password=MD5ofPASSWORD"
# 或
wget -O regdns.log "https://api.dynu.com/nic/update?myip=172.172.16.26&hostname=any.domainname.com&username=username@gmail.com&password=md5"
