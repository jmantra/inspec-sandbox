#!/bin/bash
echo "This will check to make sure all the services are installed and running for this box to be a domain controler as well check for the AD replication status  tool"
read -p "Enter  username :  " username
read -s -p  "Enter  password :  " password
inspec exec jman-windows-spec.rb -t winrm://$username@192.168.1.158 --password=$password --port=5985

