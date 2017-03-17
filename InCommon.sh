
#!/bin/bash

if [ $1 ] ; then
 certname=$1
else
 certname=$HOSTNAME
fi
certprovider="InCommon"
reqdate=`/bin/date +%Y%m%d`
sudo /usr/bin/openssl req -nodes -newkey rsa:2048 -keyout $certname.$reqdate.$certprovider.key -out $certname.$reqdate.$certprovider.csr -subj "/C=US/L=Washington/ST=District of Columbia/O=The George Washington University/OU=Division of Information Technology/CN=$certname/emailAddress=dns@gwu.edu"
