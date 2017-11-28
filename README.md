# Requirements

* docker

# Install the command
install the command in /usr/bin

~~~~
$ make install
~~~~

# Uninstall the command
uninstall the command

~~~~
$ make uninstall
~~~~

# Test
send 2 request to google

~~~~
$ ab -n 2 http://google.com/

//response

This is ApacheBench, Version 2.3 <$Revision: 1796539 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking google.com (be patient).....done


Server Software:        
Server Hostname:        google.com
Server Port:            80

Document Path:          /
Document Length:        270 bytes

Concurrency Level:      1
Time taken for tests:   0.319 seconds
Complete requests:      2
Failed requests:        0
Non-2xx responses:      2
Total transferred:      1042 bytes
HTML transferred:       540 bytes
Requests per second:    6.27 [#/sec] (mean)
Time per request:       159.469 [ms] (mean)
Time per request:       159.469 [ms] (mean, across all concurrent requests)
Transfer rate:          3.19 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:       79   79   0.9     80      80
Processing:    80   80   0.0     80      80
Waiting:       80   80   0.0     80      80
Total:        159  159   0.9    160     160
WARNING: The median and mean for the initial connection time are not within a normal deviation
        These results are probably not that reliable.
WARNING: The median and mean for the total time are not within a normal deviation
        These results are probably not that reliable.

Percentage of the requests served within a certain time (ms)
  50%    160
  66%    160
  75%    160
  80%    160
  90%    160
  95%    160
  98%    160
  99%    160
 100%    160 (longest request)

~~~~

**note:** The most relevant of these results is the following:
* Requests per second: requests answered per second during the test.
* Time per request (mean): time fear that the server has been slow to attend a group of concurrent requests (5 or 20).
* Time per request (mean, across all concurrent requests): average time the server has been slow to respond to an individual request.

# Apache benchmarking documentation

~~~~
http://httpd.apache.org/docs/2.0/programs/ab.html
~~~~