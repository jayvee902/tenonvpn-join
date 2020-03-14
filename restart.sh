pid=$(pidof net)
sudo kill -9 $pid &
sleep 3
ins_path=`cat /root/tenon.path`
echo $ins_path
cd $ins_path && sudo sh start_node.sh
sudo iptables -F
