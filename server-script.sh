sudo yum install fontconfig java-17-openjdk -y
sudo yum install git -y
sudo yum install maven -y
if [ -d "addressbook" ]
then
 echo 'repo is cloned and exists'
 cd /home/ec2-user/addressbook
 git pull origin master
 else
 echo "repo is not there"
 git clone https://github.com/piyush792/addressbook.git
 cd /home/ec2-user/addressbook
 fi
 mvn package
 
