# 1. update nginx.react.conf to enable https
# 2. sh tools/deploy.sh
# 3. update the docker-compose.yml
    # update the volumes section to mount the certs and nginx config

sudo apt update
sudo apt install certbot
sudo apt install python3-certbot-nginx
sudo lsof -i :80
sudo kill -9 $(sudo lsof -t -i :80)
sudo certbot certonly --standalone -d ap.beamdata.ai --agree-tos --email dawei.zhang@weclouddata.com
# the certs will be stored in /etc/letsencrypt/live/ap.beamdata.ai