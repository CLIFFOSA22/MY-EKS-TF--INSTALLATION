/*
iNSTTYALLING TERRAFORM USING A BASH SCRIPT.

You can parse this installation in your vscode terraform manifest file
 to install terraform along with your other instllations. */

#!/bin/bash
# install terraform in ubuntu server
sudo apt install wget unzip -y
#Please check the lastest version online and edit it below
wget https://releases.hashicorp.com/terraform/1.7.3/terraform_1.7.3_linux_amd64.zip
sudo unzip terraform_1.7.3_linux_amd64.zip -d /usr/local/bin/
#Export terraform binary path temporally
export PATH=$PATH:/usr/local/bin
#Add path permanently for current user.By Exporting path in .bashrc file at end of file.
 echo  "export PATH=$PATH:/usr/local/bin" >> ~/.bashrc
# Source .bashrc to reflect for current session
 source ~/.bashrc
 #To verify if terraform was installed, run below
#terraform -v
