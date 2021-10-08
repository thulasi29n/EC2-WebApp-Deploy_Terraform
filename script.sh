#cloud-boothook
#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl status apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<html><body><p> My Instance!</p></body></html>" | sudo tee /var/www/html/index.html
            