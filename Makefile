
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/home/liuzhentao/nginx/nginx-1.13.1/sbin/nginx -t

	kill -USR2 `cat /home/liuzhentao/nginx/nginx-1.13.1/logs/nginx.pid`
	sleep 1
	test -f /home/liuzhentao/nginx/nginx-1.13.1/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/liuzhentao/nginx/nginx-1.13.1/logs/nginx.pid.oldbin`
