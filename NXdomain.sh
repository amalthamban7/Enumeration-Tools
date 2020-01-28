rm -rf cname.txt,finalresult.txt
for i in $(cat finaldomains.txt);do
host -t cname $i | cut -d " " -f1,6 >> cname.txt
sleep 1
done
IFS=''
while read data
do
      if  dig +answer $(echo $data | cut -d" " -f2)| grep "NXDOMAIN" ; then
        echo $data >> finalresult.txt
      fi
done < cname.txt
