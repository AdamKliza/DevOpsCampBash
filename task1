#-define variables T_DATA and T_ARCH in the environment

echo "export T_DATA="/temp/T_DATA"" >> /etc/environment && source /etc/environment
echo "export T_ARCH="/temp/T_ARCH"" >> /etc/environment && source /etc/environment

#-each time when the user logs in add entry in a file logins.txt in directory pointed by T_DATA
#add script to /etc/profile.d/

#!/bin/bash
echo "User $(whoami) logged in" >> $T_DATA/logins.txt

