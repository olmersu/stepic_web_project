sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.conf /etc/gunicorn.d/gunicorn.conf
gunicorn -c /home/box/web/etc/hello.conf -b 0.0.0.0:8080 hello:hello_app &