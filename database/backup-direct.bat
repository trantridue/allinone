D:
cd D:\Projects\OTS\booking-room-project\web\allinone\database
git pull
plink -ssh -pw RAUE9465jkwh root@103.1.236.134 "sh /root/backup.sh"
pscp -pw RAUE9465jkwh root@103.1.236.134:/root/zkpmolfu_banhang.sql D:\Projects\OTS\booking-room-project\web\allinone\database\
cd D:\Projects\OTS\booking-room-project\web\allinone\database
git pull
git add D:\Projects\OTS\booking-room-project\web\allinone\database\zkpmolfu_banhang.sql
git commit -m "auto backup database from laptop"
git push