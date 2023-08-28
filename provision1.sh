#!/usr/bin/env bash
#Install Apache with web server
sudo yum update -y
sudo yum install -y httpd

#Start apache and set it to run at boot
sudo systemctl start httpd
sudo systemctl enable httpd

#Create a sample index.html file
sudo echo "<html><body><h1>Hello world</h1></body></html>" > /var/www/html/index.html

# #Restart apache to serve the new index html file
sudo systemctl restart httpd

# PRovide location in Vagrantfile config.vm.provision :shell, path: "provision.sh" 