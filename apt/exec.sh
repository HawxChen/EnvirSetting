while read p; do
  apt-get install -y $p 
done <InstallPackages.txt
#cat ..txt | xargs apt-get install -y
#vim - replace "install" words
#dpkg list all installed packages
#dpkg --get-selections | grep -v deinstall > EnvirSetting/apt/InstallPackages.txt
#tr -d "\t" < InstallPackages.txt  >& log
