#!/bin/bash
yum update -y
yum install git httpd wget unzip -y
systemctl start httpd
systemctl enable httpd
cd /home/ec2-user || cd /root
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip
rm -f /var/www/html/index.html   # 🛠️ Key fix here
cp -r static-resume-main/* /var/www/html/
chown -R apache:apache /var/www/html
rm -rf static-resume-main main.zip
exit 0


