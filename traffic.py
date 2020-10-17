#! /usr/bin/python
import os
import time
import sys
rps = sys.argv[1]
print(rps)
sleep_time = 0.9
if(int(rps)>150):
	sleep_time = 0.7
while True:
	for i in range(int(rps)):
		os.system("curl -s -I http://www.guestbook.com > guestbook_"+rps+"_curl.log &")
	time.sleep(sleep_time)

