# TP http
Download this repository and go into it.
## Disclaimer 
Sorry NGINX reverse proxy doesn't work properly with dokuwiki and css and sorry i don't have so much time to spend on this problem. So you have a ugly dokuwiki but the reverse proxy works.
## Configuring
You have to add some things into your /etc/hosts file (Sorry Windows it's hard for you).
```
192.168.56.3	server1
192.168.56.5	wiki.lab.local
192.168.56.10	server2
```
After you can:
```
Vagrant up
```
After 1 or 2 minutes open your browser and access to the dokuwiki with this hostname:
```
wiki.lab.local
```

## Troubleshoot
If you want to see my beautiful dokuwiki already preinstalled you can access it by typing this in you browser: 
```server1```
There is a automatic rsync (crontab) who backup all the pages of the server 1 to the server 2 just in case of data loses on the server 1.