#! /bin/bash

cat ip.txt |while read line
do
	curl -s http://ip.chacha.cn/$line |grep '查询结果' |awk '{print $1,$5,$6}'
	sleep 0.02
done
