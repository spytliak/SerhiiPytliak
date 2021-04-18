#### for  "DevOps GL BaseCamp"

The simple single-line web servers:

bash
$ while true ; do echo -e "HTTP/1.1 200 OK\n\n'Hello DevOps GL BaseCamp'\n$(date)" | nc -l -k -p 8080 -q 1; done

Python
Python 2.x
$ python -m SimpleHTTPServer 8080
Python 3.x
$ python3 -m http.server 8080 --bind 127.0.0.1

node.js
$ npm install http-server -g && http-server -a localhost -p 8080

PHP
$ php -S localhost:8080 -t .

Ruby
$ ruby -run -e httpd . -p 8080


#### Example with bash in docker 
```
root@ser:~/GLDevOpsBaseCam# docker run -it -p 8000:8888 -d spytliak/singlelineweb_bash
3b31b93e07a6024625231f734fe7110e433b629831a5329be73e437395691342

root@ser:~/GLDevOpsBaseCam# curl 127.0.0.1:8000
'Hello DevOps GL BaseCamp'
Sun Apr 18 15:18:23 UTC 2021

#### Example with python in docker 
```
root@ser:~/GLDevOpsBaseCam# docker run -it -p 8000:8888 -d spytliak/singlelineweb_python
Unable to find image 'spytliak/singlelineweb_python:latest' locally
latest: Pulling from spytliak/singlelineweb_python
7e2b2a5af8f6: Pull complete
09b6f03ffac4: Pull complete
dc3f0c679f0f: Pull complete
fd4b47407fc3: Pull complete
b32f6bf7d96d: Pull complete
6f4489a7e4cf: Pull complete
af4b99ad9ef0: Pull complete
39db0bc48c26: Pull complete
acb4a89489fc: Pull complete
Digest: sha256:9ad01c5717d0fa9643e3ccbcd782c564fcadd9587d3cd480b5c373405c15ee02
Status: Downloaded newer image for spytliak/singlelineweb_python:latest
f5575da69a5ef6c494e8c2d8eee456711fa56dd6df340469b6710f9731d8562e

root@ser:~/GLDevOpsBaseCam# curl 127.0.0.1:8000
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN"><html>
<title>Directory listing for /</title>
<body>
<h2>Directory listing for /</h2>
<hr>
<ul>
<li><a href=".dockerenv">.dockerenv</a>
<li><a href="bin/">bin/</a>
<li><a href="boot/">boot/</a>
<li><a href="dev/">dev/</a>
<li><a href="etc/">etc/</a>
<li><a href="home/">home/</a>
<li><a href="lib/">lib/</a>
<li><a href="lib64/">lib64/</a>
<li><a href="media/">media/</a>
<li><a href="mnt/">mnt/</a>
<li><a href="opt/">opt/</a>
<li><a href="proc/">proc/</a>
<li><a href="root/">root/</a>
<li><a href="run/">run/</a>
<li><a href="sbin/">sbin/</a>
<li><a href="srv/">srv/</a>
<li><a href="sys/">sys/</a>
<li><a href="tmp/">tmp/</a>
<li><a href="usr/">usr/</a>
<li><a href="var/">var/</a>
</ul>
<hr>
</body>
</html>