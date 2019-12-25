  #!/bin/bash
   while [ true ]; do
   sleep 28
   httpconnection=$(netstat | grep http | wc -l)
   if [ "$httpconnection" -gt 200 ]
   then
   systemctl restart httpd
   mail -s "apache durumu" info@abc.com <<< "apache restart edildi"
   fi
   done
