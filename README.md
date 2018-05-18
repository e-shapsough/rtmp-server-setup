# rtmp-server-setup
How to setup
1- install git on your server
2- git clone git@github.com:e-shapsough/rtmp-server-setup.git
3- cd rtmp-server-setup
4- chmod +x install.sh
5- ./install.sh
6- Have Fun

The script will compile nginx with the rtmp module, install the statistics software, create nginx service file, configure the server to accept multiple rtmp streams and server them as hls streams.

if you need ssl you will need to provide your own certs and install them
you will also need to set who can stream to your server via restricting ip access from the nginx config file

* For debian/ubuntu distros only
