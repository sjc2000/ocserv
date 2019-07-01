# cat mycert
#####################################
# copy this file to user fold.
# then run
#####################################

read -p "Please enter username: " name
echo "username: " $name
# create user template
cat << EOF > ${name}.tmpl
cn = "$name"
unit = "admins" 
expiration_days = 365 
signing_key 
tls_www_client 
EOF

# create client cert file
certtool --generate-privkey --outfile ${name}-key.pem
certtool --generate-certificate --load-privkey ${name}-key.pem --load-ca-certificate ../ca-cert.pem --load-ca-privkey ../ca-key.pem --template ${name}.tmpl --outfile ${name}-cert.pem
certtool --to-p12 --load-privkey ${name}-key.pem --pkcs-cipher 3des-pkcs12 --load-certificate ${name}-cert.pem --outfile ${name}.p12 --outder --password ""
cp ${name}.p12 /var/www/html
