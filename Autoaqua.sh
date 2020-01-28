for i in $(cat domain.txt);do
aquatone-discover --domain $i
sleep 5
done
