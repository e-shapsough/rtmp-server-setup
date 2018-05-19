# rtmp-server-setup
How to setup

1- install git on your server (apt-get install git)

2- git clone https://github.com/e-shapsough/rtmp-server-setup.git

3- cd rtmp-server-setup

4- chmod +x install.sh

5- ./install.sh

6- Have Fun



The script will compile nginx with the rtmp module, install the statistics software, create nginx service file, configure the server to accept multiple rtmp streams and server them as hls streams.



if you need ssl you will need to provide your own certs and install them
you will also need to set who can stream to your server via restricting ip access from the nginx config file



* For debian 8+/ubuntu 16.04+ distros only

* You will need to edit the file "/root/nginx-rtmp-monitoring/config.json", Edit rtmp_server_url,rtmp_server_stream_url,rtmp_server_control_url,session_secret_key,password.

* Do not forget to restart the status service (service status restart)

* You can now push your streams and watch them on rtmp://server-ip/streams/your_stream_name

* You can watch HLS on http://server-ip:8080/hls/your_stream_name.m3u8

* RTMP Statistics http://server-ip:9991


***** Need to run As root *****




Upcoming Updates:
Integrating Ice-Cast to convert and broadcast incoming RTMP streams as audio streams.
