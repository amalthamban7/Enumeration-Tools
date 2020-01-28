for i in $(cat check.txt);do
subfinder -d $i -o /home/ec2-user/enumerators/sub/$i.txt
sleep 5
done
