for i in $(cat domain.txt);do
amass enum -d $i -o /home/ec2-user/amass/$i
sleep 10
done
