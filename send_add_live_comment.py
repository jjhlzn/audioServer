# coding:UTF-8
import httplib
import datetime
import time
import urllib
import json
import threading
from time import ctime,sleep
import smtplib
from email.mime.text import MIMEText

import sys

HOST = "114.215.236.171:6012"

def send_request():
    conn = httplib.HTTPConnection(HOST)
    jsondata = {"userInfo": {
                 "token": "xxxxxxxxxx",
                 "userid": "13706794299"},
			"client": {
                 'appversion': "1.0.3",
                 'model': "iPhone6s",
                 'osversion': "9.3",
                 'platform': "iPhone",
                 'screensize': "375*667"},
            "request": {
                 'song': {'id': 10},
                 'lastId': -1}				 }
 
    try:
        conn.request("POST", "/song/livecomments", json.dumps(jsondata), {"Content-type": "application/json"})
		
        res = conn.getresponse()
        data = res.read()
        print data
        print "success!\n"
    except Exception, e:
        print e

def main():
    conn = httplib.HTTPConnection(HOST)
    while(1):
		try:
			send_request()
		except Exception, e:
			print e
			return
		sleep(5)

threads = []
for i in range(300):
    t1 = threading.Thread(target=main)
    threads.append(t1)
	
if __name__ == '__main__':
    for t in threads:
        t.setDaemon(True)
        t.start()
    t.join()
    print "all over %s" %ctime()
	
