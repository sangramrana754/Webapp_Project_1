Creating a EC2 instance
For demo purpose here, we selected a Ubuntu OS as the VM with free tier eligibility

//Install git if not already installed with "sudo apt install git"

//clone this directory to your desired folder
git clone https://github.com/adwognura/WebApp.git

//Intsall nodejs and other libraries
sudo apt install nodejs  
sudo apt install npm
npm install http-server -g

//check if nodejs and npm are installed
node -v
npm -v

//Goto the main folder of dowloaded foler where index.html exixts and run the below to run the localhost
http-server

//To check on your local machine you need to enter the public IP of your EC2 instance followed by the listening port , in our http case it was 8080
http://184.73.19.177:8080/

//The above url will work if the security groups are not configured, to do so navigate to the Security Tab in your EC2 instance and click on the Security groups, post that click on the edit inbound rules and add the below rulr
Select custom TCP as type and port range as 8080 in our case and source as 0.0.0.0/0

//Reload the URL and finally Congragulations on deploying your first WebApp to EC2 instance
