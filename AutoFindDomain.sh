for i in $(cat domain.txt);do
./findomain-linux --output /home/ec2-user/enumerators/find/$i.txt --target $i
sleep 5
done
